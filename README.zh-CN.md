# LogoLight（简体中文）

> 控制 MacBook Pro 背面那颗会发光的 Apple 标志：关掉、调暗、让它像呼吸一样明暗起伏、像心跳一样跳动，或者随音乐一起发光。全部在菜单栏里完成。免费、开源，适用于配备 PROLED XDR 显示屏的 MacBook Pro。
>
> 本文档为 `README.md` 的简体中文版，内容与英文版保持一致。

<p align="center">
  <b>语言</b>：<a href="README.md">English</a> · <b>简体中文</b> · <a href="README.zh-TW.md">繁體中文</a>
</p>

<p align="center">
  <img src="docs/banner.jpg" width="100%" alt="LogoLight：LogoLight 的实时预览显示一个发光的 Apple 标志，旁边是菜单中的 LogoLight 开关与已打开的呼吸效果。">
</p>

<p align="center">
  <a href="https://github.com/Ark0N/LogoLight/releases/latest/download/LogoLight-1.4.0.zip"><img src="docs/download-button.png" height="56" alt="下载 LogoLight"></a>
  &nbsp;
  <a href="https://buymeacoffee.com/arkon"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" height="56" alt="Buy me a coffee"></a>
</p>

<p align="center">
  或使用 <a href="https://brew.sh">Homebrew</a>：<code>brew install --cask ark0n/tap/logolight</code>
</p>

<p align="center">
  <a href="https://logolight.app"><img src="https://img.shields.io/badge/website-logolight.app-1f1f24?style=flat-square" alt="Website: logolight.app"></a>
  <img src="https://img.shields.io/badge/notarized-Developer%20ID-1f1f24?style=flat-square" alt="Notarized by Apple">
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-1f1f24?style=flat-square" alt="MIT license"></a>
</p>

## 功能

<table>
  <tr>
    <td width="360" align="center" valign="middle">
      <picture>
        <source media="(prefers-color-scheme: dark)" srcset="docs/media/menu-breathe-dark.gif">
        <img src="docs/media/menu-breathe-light.gif" width="320" alt="LogoLight 的完整菜单：LogoLight 开关与呼吸效果已打开，上方的实时预览显示 Apple 标志缓慢变亮、变暗又变亮；下方依次是亮度滑块、电池与充电开关、效果开关（呼吸、脉冲、心跳、声音）以及摩斯电码；再往下是菜单自身项目：已勾选的“禁用密码”、上电或有外接显示器时“合盖仍点亮”、已勾选的“登录时启动”，以及“退出 LogoLight”。">
      </picture>
    </td>
    <td valign="middle">
      <b>LogoLight 开关</b><br>
      位于菜单顶部，也可以 Option 点击菜单栏图标。标志会平滑淡出再淡入，无需输入密码。
      <br><br>
      <b>实时预览</b><br>
      以你机身本身的配色（深空黑或银色）显示当下合盖的样子，并跟随在别处的改动与效果变化。
      <br><br>
      <b>亮度</b><br>
      滑块会把标志柔和地过渡到每一档亮度。屏幕亮度不再影响它；它仍会随环境光自适应。
      <br><br>
      <b>效果</b><br>
      呼吸、脉冲、心跳，全部由 LED 自身的硬件淡入淡出实现，峰值即你设定的亮度。
      <br><br>
      <b>电量指示</b><br>
      打开“电池”后，标志显示剩余电量：充满时最亮，电量越低越暗。
      <br><br>
      <b>充电灯</b><br>
      打开“充电”后，充电期间标志会像老款 MacBook 的睡眠指示灯一样呼吸，充满或停止充电后回到你选择的效果。
      <br><br>
      <b>摩斯电码</b><br>
      输入一段消息并点击播放，标志就会把它闪出来。打开“循环”可重复闪烁，直到你停止。
      <br><br>
      <b>声音</b><br>
      打开后，标志随 Mac 正在播放的声音发光：声音越大越亮，节拍之间变暗，峰值即你设定的亮度。macOS 会请求一次权限，允许 LogoLight 听到系统声音（macOS 14.2 或更高）；不会录音、不会保存。
      <br><br>
      <b>合盖仍点亮</b><br>
      合上盖子后标志依然亮着并继续播放效果，同时键盘背光保持关闭：这发生在接通电源时（LogoLight 会在合盖状态下让 Mac 保持唤醒），或者接有外接显示器时。使用电池且无外接显示器时，Mac 照常睡眠。
      <br><br>
      <b>控制中心</b><br>
      为控制中心或菜单栏提供一个 LogoLight 开关（macOS 26 或更高）。
      <br><br>
      <b>最多只需一次密码</b><br>
      通常一次都不用。在 macOS 要求输入密码的场景下，<a href="#后备方案apple-官方文档中的命令">“禁用密码”</a>可以做到只输入这一次。
      <br><br>
      <b>登录时启动</b><br>
      无需任何设置：它会记住你的亮度与效果。
      <br><br>
      <b>为 Codeman 让路</b><br>
      <a href="https://getcodeman.com">Codeman</a> 的 Mac 应用可以在标志上显示 AI 编程代理的工作状态。在此期间 LogoLight 会暂停，Codeman 结束后再从原处继续。
    </td>
  </tr>
</table>

## 效果演示

<table>
  <tr>
    <td align="center"><img src="docs/media/breathe.gif" width="330" alt="实时预览中的 Apple 标志缓慢变暗再变亮（呼吸）。"><br><b>呼吸</b></td>
    <td align="center"><img src="docs/media/pulse.gif" width="330" alt="实时预览中的 Apple 标志以稳定节奏明暗交替（脉冲）。"><br><b>脉冲</b></td>
  </tr>
  <tr>
    <td align="center"><img src="docs/media/heartbeat.gif" width="330" alt="实时预览中的 Apple 标志连跳两下后停顿（心跳）。"><br><b>心跳</b></td>
    <td align="center"><img src="docs/media/on-off.gif" width="330" alt="实时预览中的 Apple 标志淡出、保持黑暗、再淡入（LogoLight 开关）。"><br><b>开与关</b></td>
  </tr>
</table>

<sub>这些动图由 LogoLight 自身的实时预览以真实的效果时序绘制（运行 `swift scripts/make-media.swift` 可重新生成）。</sub>

## 安装

1. **[下载 LogoLight](https://github.com/Ark0N/LogoLight/releases/latest/download/LogoLight-1.4.0.zip)**。它使用 Developer ID 签名，并通过 Apple 公证。
2. 解压后把 **LogoLight** 移到「应用程序」文件夹并打开。它会常驻菜单栏。

或通过 [Homebrew](https://brew.sh)：

```sh
brew install --cask ark0n/tap/logolight
```

**系统要求**：配备 PROLED XDR 显示屏的 MacBook Pro，以及 macOS 14 或更高版本（这类机器出厂即为 macOS 27）。在其他 Mac 上，LogoLight 可以打开，但会提示该机型没有可发光的标志。

### 添加到控制中心

1. 点击菜单栏中的「控制中心」，再点底部的 **编辑控制项**。
2. 搜索 **LogoLight**。
3. 把 **LogoLight** 拖进控制中心，或直接拖到菜单栏。

<p align="center">
  <img src="docs/control-center.png" width="720" alt="控制中心左上角是 LogoLight 的按钮，箭头指向它：点一下即可开关合盖上的发光标志，图示分别是点亮与熄灭的合盖。第二个箭头指向“编辑控制项”，并标出添加步骤：打开控制中心、点击编辑控制项、搜索 LogoLight、把 LogoLight 拖进去。">
</p>

<sub>Apple 只允许应用向控制中心添加开关和按钮，因此亮度滑块仍留在 LogoLight 自己的菜单中。</sub>

## 工作原理

<details>
<summary><b>技术细节</b>：私有接口、淡入淡出、控制中心、状态读取与密码后备方案</summary>

Apple 在[《关于发光的 Apple 标志》](https://support.apple.com/en-us/149248)中只公开了一个设置项：

```sh
sudo defaults write com.apple.CoreBrightness LEBacklightMode -int 0   # 关闭
sudo defaults delete com.apple.CoreBrightness LEBacklightMode         # 重新打开
```

标志由 `corebrightnessd` 驱动，它会监听上述设置。标志处于开启状态时，该进程会根据屏幕亮度与环境光自动设定标志的亮度。这个设置对所有用户账户生效，在 macOS 恢复模式中同样生效。

#### 直接控制（无需密码）

`corebrightnessd` 的灯光发射器（“LE”）模块还接受任意应用通过 CoreBrightness 的 `BrightnessSystemClient` 写入的几个键——也就是控制中心调节屏幕亮度时所用的接口：

| 键 | 作用 |
| --- | --- |
| `LEBacklightMode` | `0` 关闭，`2` 开启。以 root 运行的 `corebrightnessd` 会把它保存成与上面命令相同的 `LEBacklightMode` 默认项，因此设置可持久化，`defaults delete` 仍然能把标志重新打开。 |
| `LEPWMFactorFadeDuration` | 标志淡入淡出所需的时长（秒）。`0` 表示恢复自动时长。 |
| `DisplayLogicalState` | `1`（Blank）让标志淡出，`2`（Unblank）让它淡入。屏幕本身不受影响，但键盘背光会跟随变化（见下）。 |
| `LEPWMState` | 实时状态，例如 `Factor`（淡入淡出进度）、`FinalNits`、`Lux`（只读）。 |

LogoLight 用这些键实现免密码开关标志，并让它平滑变化：关闭时先用一秒淡出，开启时从黑暗开始淡入（若已选效果，效果的第一段上升就是这次淡入）。效果本身就是同一组淡入淡出的循环。当标志被关闭、显示器休眠，或内置显示器消失（合盖，且未开启“合盖仍点亮”）时，效果会暂停。

键盘背光同样监听 `DisplayLogicalState`，因此在每次 Blank 之后，LogoLight 会单独向键盘通告“显示器仍在”，让键盘保持亮着。真正的显示器休眠到来时，键盘照常熄灭。

由于没有直接控制标志亮度的键，滑块采用“半途截停”的方式：LogoLight 监视 `Factor`，在接近目标档位时用几次短淡入淡出把标志“缓靠”到该档位，让它减速停住而不是高速急停；随后启动一次极慢的反向过渡，慢到肉眼看不到移动。该亮度会保持到下一次变化。拖动滑块期间，正在进行的过渡会跟随滑块，而不是每一步都重新开始。退出 LogoLight 时，标志会恢复到正常亮度。

`corebrightnessd` 还会让标志随屏幕亮度一起变暗：标志的亮度为 `AppliedNits × Factor`，而 `AppliedNits` 是屏幕亮度经 `LEPWMBrightnessNitsMapping` 映射后的结果，并受环境光设定的上下限约束。运行期间 LogoLight 会写入一份平坦映射，使 `AppliedNits` 等于环境光允许的最大值，从而让标志亮度只由滑块决定（100% 即 macOS 在屏幕亮度满格时能达到的最亮）。`corebrightnessd` 只在屏幕亮度变化时才接受新映射，因此 LogoLight 随后会把当前屏幕亮度原值再写一次，促使它立即生效。退出时再以同样方式恢复屏幕原有的映射。

「声音」效果通过 Core Audio 的进程级音频捕获（process tap）听到 Mac 上所有应用的输出（macOS 14.2 或更高，需要在“仅系统音频录制”类别下授权），把每个音频缓冲区压缩成一个电平值后丢弃，并以最近一段时间内的最大音量作为基准做归一化，因此音乐本身安静与否、系统音量大小都不影响效果。标志用同一套硬件淡入淡出跟随它，且尽量少地产生过渡：上升一直持续到标志追上声音，下降持续到落到声音电平，稳定音量则用一次写入保持，然后不再打扰。

这属于私有 API，是通过分析 CoreBrightness 找到的（细节、测量数据与所用工具见 [docs/corebrightnessd.md](docs/corebrightnessd.md) 和 [tools/probes](tools/probes)）。LogoLight 采用动态加载的方式使用它；若接口不存在，或 `corebrightnessd` 不接受改动，则退回到以 root 运行 Apple 官方文档中的命令（见下文）。亮度与效果依赖直接控制，若不可用则不显示这些功能。

#### 控制中心控件

该控件是应用内部的 WidgetKit 扩展（`Controls/`）。扩展必须开启沙箱，因此它无法直接访问 `corebrightnessd`；而且只有主应用才应改动标志——亮度与效果也在主应用里。主应用以 Bundle ID 命名注册一个 Mach 端口（`app.logolight.LogoLight.control`），扩展的沙箱权限仅允许查找这一个名字。点击时扩展请求主应用切换开关，效果等同于 Option 点击；若 LogoLight 未运行，会先在后台启动它。开关状态变化时，应用会重新加载该控件。（Apple 只允许应用向控制中心添加开关和按钮，因此那里没有亮度滑块。）

#### 与 Codeman 共享标志

Codeman 的 Mac 应用会在代理工作期间让标志闪烁，用的也是同一套淡入淡出，两个应用会互相争夺。为此，Codeman 的闪烁模块在**第一次**改动标志前，会把自己的进程 ID 写入 `~/Library/Application Support/Codeman/logo-fade`，并在标志恢复正常后删除该文件。LogoLight 每秒检查一次（`LoanWatcher`）：当该文件指向一个仍在运行的 `codeman-desktop` 进程时，它暂停自己的效果，不向标志写入任何内容；期间你设置的亮度或效果会被保留。文件消失 1.5 秒后（Codeman 会在两次闪动之间短暂归还标志），LogoLight 会像从睡眠唤醒后那样重新接管标志。若 Codeman 被强制结束，文件会残留，但对应进程已不存在，因此不算数。应用 Info.plist 中的 `LogoLightStepsAsideForCodeman` 键就是 Codeman 判断“这个 LogoLight 会主动让路”的依据：面对旧版 LogoLight，Codeman 会把标志交给它处理。

#### 读取状态

设置从 `corebrightnessd` 读取（`LEBacklightMode`）。I/O Registry 中的 `bklb-backlight` PWM 设备则反映 LED 是否点亮以及有多亮：

```sh
ioreg -r -n bklb-backlight@0 | grep -E '"(enabled|high-period|low-period)"'
```

`high-period / (high-period + low-period)` 即 LED 当前的输出电平。（菜单中不显示这个值：实时预览使用的是淡入淡出进度，它与滑块处于同一刻度。）在不具备直接控制能力时，LogoLight 会在屏幕点亮期间从 `enabled` 读取设置。它不依赖 `bklb-backlight-enabled` 这个 NVRAM 变量——`corebrightnessd` 只在启动时读取它，设置变化时并不会立即更新。

#### 后备方案：Apple 官方文档中的命令

若直接控制不可用，LogoLight 会以 root 身份运行官方文档中的命令，这需要你在 macOS 标准的管理员对话框中输入密码。你只需输入一次：第一次时，对话框会说明它同时会打开 **“禁用密码”**（该菜单项只在这种情况下或已启用时显示），并在完成改动的同时把下面这条 sudoers 规则安装到 `/etc/sudoers.d/logolight`：

```
lee ALL = (root) NOPASSWD: /usr/bin/defaults write com.apple.CoreBrightness LEBacklightMode -int 0, /usr/bin/defaults delete com.apple.CoreBrightness LEBacklightMode
```

它只允许你的账户执行这两条精确命令。安装前会用 `visudo` 校验（文件属主为 root、权限 `0440`），因此错误的规则不会破坏 `sudo`。此后切换标志无需密码。若规则无法安装，或 `sudo` 不认它，对话框会恢复为原来的行为，并在本次 LogoLight 运行期间不再提供该选项。

取消勾选 **“禁用密码”** 会删除该规则，之后每次都需输入密码。LogoLight 会记住这一选择，在你重新勾选之前不会再安装规则。（你也可以手动删除该文件：`sudo rm /etc/sudoers.d/logolight`，但下一次输入密码时它会被重新安装。）

</details>

## 从源码构建

需要 macOS 14 或更高版本，以及 Xcode 或命令行工具（`xcode-select --install`）。若没有 Xcode 26 或更高版本，构建时会省略控制中心控件（它需要 Xcode 的 App Intents 工具）。

```sh
make test      # 运行测试
make app       # 构建 build/LogoLight.app
make install   # 复制到 /Applications 并打开
```

`make run` 会构建并直接从 `build/` 打开应用，不安装。

没有配备 PROLED XDR 显示屏的 MacBook Pro？Debug 构建可以模拟标志，完全不接触硬件，菜单全部可用，实时预览也会展示标志应有的表现（效果、亮度、摩斯电码）：

```sh
swift build && LOGOLIGHT_SIMULATE=1 .build/debug/LogoLight
```

应用默认以 ad-hoc 方式签名并启用强化运行时（hardened runtime）。若要用自己的 Developer ID 签名、公证并打包分发：

```sh
xcrun notarytool store-credentials logolight --apple-id YOU@EXAMPLE.COM --team-id TEAMID   # 只需一次
SIGN_IDENTITY="Developer ID Application: Your Name (TEAMID)" NOTARY_PROFILE=logolight make dist
```

`scripts/build-app.sh` 的其他可用覆盖项：`VERSION`、`BUILD_NUMBER`、`BUNDLE_ID`。

LogoLight 无法上架 Mac App Store：它使用私有 API，而 App Store 要求开启 App 沙箱，这会同时排除直接控制与管理员命令的后备方案。

<details>
<summary><b>项目结构</b>与测试</summary>

| 路径 | 内容 |
| --- | --- |
| `Sources/LogoLightCore` | `LogoController`；直接控制、亮度与效果（`LightEmitter`、`LogoEffect`）；状态读取（I/O Registry）；官方命令、管理员对话框与 sudoers 规则；菜单显示逻辑（`PanelState`） |
| `Sources/LogoLight` | AppKit 菜单栏应用，含控制面板（`ControlPanel.swift`） |
| `Sources/LogoLightTests` | 测试套件（`swift run LogoLightTests`） |
| `Controls` | 控制中心控件，由 `scripts/build-app.sh` 构建的扩展 |
| `Resources/Info.plist` | 应用包元数据模板 |
| `scripts/build-app.sh` | 构建并签名 `LogoLight.app` |
| `scripts/notarize.sh` | 对 Developer ID 构建进行公证、装订（staple）并打包（`make dist`） |
| `scripts/deploy-site.sh` | 检查网站及其下载链接，然后发布（`make deploy`） |
| `site` | 网站 [logolight.app](https://logolight.app)（Cloudflare Workers 静态资源） |
| `docs/corebrightnessd.md` | 研究笔记：各键的作用、淡入淡出曲线、如何保持某一档位 |
| `tools/probes` | 研究过程中使用的命令行工具 |
| `tools/livecheck` | 对照真实标志校验亮度与效果 |
| `CLAUDE.md` | 接手本项目时的开发笔记 |

测试是一个普通可执行目标，而非 XCTest bundle，因为 XCTest 与 swift-testing 只在完整安装 Xcode 时才提供。测试覆盖：精确的命令、shell 与 AppleScript 引号转义、sudoers 规则（用真实的 `visudo` 校验）、组件与效果在模拟 Mac 和假 `corebrightnessd` 上的行为（后者会记录收到的每个键，并按实测曲线推进淡入淡出），以及对本机真实标志状态的一次只读检查。

</details>

## 卸载

1. 若勾选了 **“禁用密码”**，请先取消勾选（这会移除 sudoers 规则）。
2. 若开启了 **“登录时启动”**，请先关闭。
3. 退出 LogoLight 并从「应用程序」中删除（或执行 `make uninstall`）。

标志本身的设置会保持你离开时的状态（效果在应用退出时停止）。若不借助应用想重新点亮标志，可执行：
`sudo defaults delete com.apple.CoreBrightness LEBacklightMode`。

## 支持

LogoLight 是免费的。如果你喜欢它，给这个仓库点个 ⭐ 能帮助更多 MacBook Pro 用户发现它。也欢迎请我喝杯咖啡：

<a href="https://buymeacoffee.com/arkon"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" height="48" alt="Buy me a coffee"></a>

## 许可

MIT，详见 [LICENSE](LICENSE)。

<sub>LogoLight 与 Apple Inc. 无关联，也未获其认可。Apple、Apple 标志和 MacBook Pro 是 Apple Inc. 在美国及其他国家/地区注册的商标。</sub>
