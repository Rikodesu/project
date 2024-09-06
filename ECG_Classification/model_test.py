import torch
import torch.nn as nn
from torchsummary import summary

class BaseBlock(nn.Module):
    def __init__(self, d_model):
        super(BaseBlock, self).__init__()
        dim = d_model // 4
        self.bottleneck = nn.Conv1d(d_model, dim, kernel_size=1, stride=1, bias=False)

        self.maxpool = nn.MaxPool1d(kernel_size=3, stride=1, padding=1, dilation=1, ceil_mode=False)
        self.conv1 = nn.Conv1d(d_model, dim, kernel_size=1, stride=1, bias=False)

        self.conv2 = nn.Conv1d(dim, dim, kernel_size=3, stride=1, padding=1, bias=False)
        self.conv3 = nn.Conv1d(dim, dim, kernel_size=5, stride=1, padding=2, bias=False)
        self.conv4 = nn.Conv1d(dim, dim, kernel_size=7, stride=1, padding=3, bias=False)

        self.bn = nn.BatchNorm1d(d_model, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
        self.relu = nn.ReLU(inplace=True)
        self.pool = nn.MaxPool1d(2)

    def forward(self, x):
        x1 = self.maxpool(x)
        x1 = self.conv1(x1)

        x_bot = self.bottleneck(x)
        x2 = self.conv2(x_bot)
        x3 = self.conv3(x_bot)
        x4 = self.conv4(x_bot)

        x_out = self.relu(self.bn(torch.cat((x1, x2, x3, x4), dim=1)))

        return self.pool(x_out)


class BasicBlock(nn.Module):
    def __init__(self, d_model):
        super(BasicBlock, self).__init__()
        self.base_block = BaseBlock(d_model)
        self.pool = nn.MaxPool1d(2)

    def forward(self, x):
        shortcut = self.pool(x)
        x = self.base_block(x)
        x = x + shortcut

        return x


class MiniInceptionTime(nn.Module):
    def __init__(self, in_channel=1, d_model=64, num_classes=10):
        super(MiniInceptionTime, self).__init__()
        self.proj = nn.Sequential(
            nn.Conv1d(in_channel, d_model, kernel_size=1, stride=1, bias=False),
            nn.BatchNorm1d(d_model),
        )

        self.BaseBlock1 = BaseBlock(d_model)
        self.BaseBlock2 = BaseBlock(d_model)
        self.BaseBlock3 = BaseBlock(d_model)
        self.BaseBlock4 = BaseBlock(d_model)

        self.shortcut1 = nn.Sequential(
            nn.Conv1d(d_model, d_model, kernel_size=1, stride=2, bias=False),
            nn.BatchNorm1d(d_model),
            nn.ReLU(inplace=True),
            nn.MaxPool1d(2)
        )

        self.shortcut2 = nn.Sequential(
            nn.Conv1d(d_model, d_model, kernel_size=1, stride=2, bias=False),
            nn.BatchNorm1d(d_model),
            nn.ReLU(inplace=True),
            nn.MaxPool1d(2)
        )

        self.pool = nn.AdaptiveAvgPool1d(1)

        self.fc = nn.Linear(d_model, num_classes)

    def forward(self, x):
        x = self.proj(x)

        shortcut1 = self.shortcut1(x)
        x = self.BaseBlock1(x)
        x = self.BaseBlock2(x)
        x = x + shortcut1

        shortcut2 = self.shortcut2(x)
        x = self.BaseBlock3(x)
        x = self.BaseBlock4(x)
        x = x + shortcut2

        x = self.pool(x)
        x = x.view(x.size(0), -1)
        x = self.fc(x)

        return x


class MiniInceptionTimeV1(nn.Module):
    def __init__(self, in_channel=1, d_model=64, num_classes=10):
        super(MiniInceptionTimeV1, self).__init__()
        self.proj = nn.Sequential(
            nn.Conv1d(in_channel, d_model, kernel_size=1, stride=1, bias=False),
            nn.BatchNorm1d(d_model),
        )

        self.BaseBlock1 = BaseBlock(d_model)
        self.BaseBlock2 = BaseBlock(d_model)
        self.BaseBlock3 = BaseBlock(d_model)
        self.BaseBlock4 = BaseBlock(d_model)

        self.pool = nn.AdaptiveAvgPool1d(1)

        self.fc = nn.Linear(d_model, num_classes)

    def forward(self, x):
        x = self.proj(x)

        x = self.BaseBlock1(x)
        x = self.BaseBlock2(x)
        x = self.BaseBlock3(x)
        x = self.BaseBlock4(x)

        x = self.pool(x)
        x = x.view(x.size(0), -1)
        x = self.fc(x)

        return x


if __name__ == '__main__':
    x = torch.rand((2, 1, 320))
    model = MiniInceptionTimeV1(1, 320, 5)
    print('Number of model parameters:', sum(p.numel() for p in model.parameters() if p.requires_grad))
    output = model(x)
    model = model.to('cuda')
    print(output.shape)
    summary(model, (1, 320))