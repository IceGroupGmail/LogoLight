# LogoLight（繁體中文）

> 控制 MacBook Pro 上蓋那顆會發光的 Apple 標誌：關掉、調暗、讓它像呼吸一樣明暗起伏、像心跳一樣跳動，或隨著音樂一起發光。全部在選單列裡完成。免費、開源，適用於配備 PROLED XDR 顯示器的 MacBook Pro。
>
> 本文件為 `README.md` 的繁體中文版，內容與英文版一致。

<p align="center">
  <b>語言</b>：<a href="README.md">English</a> · <a href="README.zh-CN.md">简体中文</a> · <b>繁體中文</b>
</p>

<p align="center">
  <img src="docs/banner.jpg" width="100%" alt="LogoLight：LogoLight 的即時預覽顯示一個發光的 Apple 標誌，旁邊是選單中的 LogoLight 開關與已開啟的呼吸效果。">
</p>

<p align="center">
  <a href="https://github.com/Ark0N/LogoLight/releases/latest/download/LogoLight-1.4.0.zip"><img src="docs/download-button.png" height="56" alt="下載 LogoLight"></a>
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
        <img src="docs/media/menu-breathe-light.gif" width="320" alt="LogoLight 的完整選單：LogoLight 開關與呼吸效果已開啟，上方的即時預覽顯示 Apple 標誌緩慢變亮、變暗又變亮；下方依次是亮度滑桿、電池與充電開關、效果開關（呼吸、脈衝、心跳、聲音）以及摩斯電碼；再往下是選單本身的項目：已勾選的「停用密碼」、接上電源或有外接顯示器時「闔上上蓋仍亮」、已勾選的「登入時啟動」，以及「結束 LogoLight」。">
      </picture>
    </td>
    <td valign="middle">
      <b>LogoLight 開關</b><br>
      位於選單頂端，也可以按住 Option 點按選單列圖示。標誌會平順地淡出再淡入，不需要輸入密碼。
      <br><br>
      <b>即時預覽</b><br>
      以你機身本身的配色（太空黑或銀色）顯示上蓋當下的樣子，並跟隨在別處做的變更與效果。
      <br><br>
      <b>亮度</b><br>
      滑桿會把標誌平順地帶到每一段亮度。螢幕亮度不再影響它；它仍會隨環境光自動調整。
      <br><br>
      <b>效果</b><br>
      呼吸、脈衝、心跳，全部由 LED 本身的硬體淡入淡出實現，峰值即你設定的亮度。
      <br><br>
      <b>電量指示</b><br>
      開啟「電池」後，標誌顯示剩餘電量：充飽時最亮，電量越低越暗。
      <br><br>
      <b>充電燈</b><br>
      開啟「充電」後，充電期間標誌會像舊款 MacBook 的睡眠指示燈一樣呼吸，充飽或停止充電後回到你選擇的效果。
      <br><br>
      <b>摩斯電碼</b><br>
      輸入一段訊息並按下播放，標誌就會把它閃出來。開啟「循環」可重複閃爍，直到你停止。
      <br><br>
      <b>聲音</b><br>
      開啟後，標誌隨著 Mac 正在播放的聲音發光：聲音越大越亮，節拍之間變暗，峰值即你設定的亮度。macOS 會詢問一次權限，允許 LogoLight 聽到系統聲音（macOS 14.2 或以上）；不會錄音、不會保存。
      <br><br>
      <b>闔上上蓋仍亮</b><br>
      蓋上上蓋後標誌依然亮著並繼續播放效果，同時鍵盤背光保持關閉：這發生在接上電源時（LogoLight 會在闔蓋狀態下讓 Mac 保持喚醒），或接有外接顯示器時。使用電池且無外接顯示器時，Mac 照常睡眠。
      <br><br>
      <b>控制中心</b><br>
      為控制中心或選單列提供一個 LogoLight 開關（macOS 26 或以上）。
      <br><br>
      <b>最多只需一次密碼</b><br>
      通常一次都不用。在 macOS 要求輸入密碼的情況下，<a href="#備援方案apple-官方文件中的指令">「停用密碼」</a>可以做到只輸入這一次。
      <br><br>
      <b>登入時啟動</b><br>
      無需任何設定：它會記住你的亮度與效果。
      <br><br>
      <b>為 Codeman 讓位</b><br>
      <a href="https://getcodeman.com">Codeman</a> 的 Mac 應用程式可以在標誌上顯示 AI 程式代理的工作狀態。在這段期間 LogoLight 會暫停，Codeman 結束後再從原處繼續。
    </td>
  </tr>
</table>

## 效果展示

<table>
  <tr>
    <td align="center"><img src="docs/media/breathe.gif" width="330" alt="即時預覽中的 Apple 標誌緩慢變暗再變亮（呼吸）。"><br><b>呼吸</b></td>
    <td align="center"><img src="docs/media/pulse.gif" width="330" alt="即時預覽中的 Apple 標誌以穩定節奏明暗交替（脈衝）。"><br><b>脈衝</b></td>
  </tr>
  <tr>
    <td align="center"><img src="docs/media/heartbeat.gif" width="330" alt="即時預覽中的 Apple 標誌連跳兩下後停頓（心跳）。"><br><b>心跳</b></td>
    <td align="center"><img src="docs/media/on-off.gif" width="330" alt="即時預覽中的 Apple 標誌淡出、保持黑暗、再淡入（LogoLight 開關）。"><br><b>開與關</b></td>
  </tr>
</table>

<sub>這些動態圖由 LogoLight 自身的即時預覽以真實的效果時序繪製（執行 `swift scripts/make-media.swift` 可重新產生）。</sub>

## 安裝

1. **[下載 LogoLight](https://github.com/Ark0N/LogoLight/releases/latest/download/LogoLight-1.4.0.zip)**。它使用 Developer ID 簽署，並通過 Apple 公證。
2. 解壓縮後把 **LogoLight** 移到「應用程式」資料夾並開啟。它會常駐在選單列。

或透過 [Homebrew](https://brew.sh)：

```sh
brew install --cask ark0n/tap/logolight
```

**系統需求**：配備 PROLED XDR 顯示器的 MacBook Pro，以及 macOS 14 或以上版本（這類機器出廠即為 macOS 27）。在其他 Mac 上，LogoLight 可以開啟，但會提示該機型沒有可發光的標誌。

### 加入控制中心

1. 點按選單列中的「控制中心」，再點底部的 **編輯控制項目**。
2. 搜尋 **LogoLight**。
3. 把 **LogoLight** 拖進控制中心，或直接拖到選單列。

<p align="center">
  <img src="docs/control-center.png" width="720" alt="控制中心左上角是 LogoLight 的按鈕，箭頭指向它：按一下即可開關上蓋上的發光標誌，圖示分別是點亮與熄滅的上蓋。第二個箭頭指向「編輯控制項目」，並標出加入步驟：開啟控制中心、點按編輯控制項目、搜尋 LogoLight、把 LogoLight 拖進去。">
</p>

<sub>Apple 只允許應用程式把開關和按鈕加入控制中心，因此亮度滑桿仍留在 LogoLight 自己的選單中。</sub>

## 運作原理

<details>
<summary><b>技術細節</b>：私有介面、淡入淡出、控制中心、狀態讀取與密碼備援方案</summary>

Apple 在[《關於發光的 Apple 標誌》](https://support.apple.com/en-us/149248)中只公開了一個設定項：

```sh
sudo defaults write com.apple.CoreBrightness LEBacklightMode -int 0   # 關閉
sudo defaults delete com.apple.CoreBrightness LEBacklightMode         # 重新開啟
```

標誌由 `corebrightnessd` 驅動，它會監聽上述設定。標誌處於開啟狀態時，該程序會依據螢幕亮度與環境光自動設定標誌亮度。這個設定對所有使用者帳號生效，在 macOS 復原模式中同樣生效。

#### 直接控制（無需密碼）

`corebrightnessd` 的燈光發射器（「LE」）模組還接受任何應用程式透過 CoreBrightness 的 `BrightnessSystemClient` 寫入的幾個鍵——也就是控制中心調整螢幕亮度時所用的介面：

| 鍵 | 作用 |
| --- | --- |
| `LEBacklightMode` | `0` 關閉，`2` 開啟。以 root 執行的 `corebrightnessd` 會把它存成與上面指令相同的 `LEBacklightMode` 預設項，因此設定可持久保存，`defaults delete` 仍然能把標誌重新開啟。 |
| `LEPWMFactorFadeDuration` | 標誌淡入淡出所需的時間（秒）。`0` 表示恢復自動時間。 |
| `DisplayLogicalState` | `1`（Blank）讓標誌淡出，`2`（Unblank）讓它淡入。螢幕本身不受影響，但鍵盤背光會跟著變化（見下）。 |
| `LEPWMState` | 即時狀態，例如 `Factor`（淡入淡出進度）、`FinalNits`、`Lux`（唯讀）。 |

LogoLight 用這些鍵實現免密碼開關標誌，並讓它平順變化：關閉時先花一秒淡出，開啟時從黑暗開始淡入（若已選擇效果，效果的第一段上升就是這次淡入）。效果本身就是同一組淡入淡出的循環。當標誌被關閉、顯示器睡眠，或內建顯示器消失（闔蓋，且未開啟「闔上上蓋仍亮」）時，效果會暫停。

鍵盤背光同樣監聽 `DisplayLogicalState`，因此在每次 Blank 之後，LogoLight 會單獨向鍵盤通告「顯示器仍在」，讓鍵盤保持亮著。真正的顯示器睡眠到來時，鍵盤照常熄滅。

由於沒有直接控制標誌亮度的鍵，滑桿採用「半途截停」的方式：LogoLight 監視 `Factor`，在接近目標段位時用幾次短淡入淡出把標誌「緩靠」到該段位，讓它減速停住而不是高速急停；隨後啟動一次極慢的反向過渡，慢到肉眼看不到移動。該亮度會保持到下一次變化。拖曳滑桿期間，正在進行的過渡會跟隨滑桿，而不是每一步都重新開始。結束 LogoLight 時，標誌會恢復到正常亮度。

`corebrightnessd` 還會讓標誌隨螢幕亮度一起變暗：標誌的亮度為 `AppliedNits × Factor`，而 `AppliedNits` 是螢幕亮度經 `LEPWMBrightnessNitsMapping` 對應後的結果，並受環境光設定的上下限約束。執行期間 LogoLight 會寫入一份平坦對應，使 `AppliedNits` 等於環境光允許的最大值，從而讓標誌亮度只由滑桿決定（100% 即 macOS 在螢幕亮度全滿時能達到的最亮）。`corebrightnessd` 只在螢幕亮度變化時才接受新對應，因此 LogoLight 隨後會把目前的螢幕亮度原值再寫一次，促使它立即生效。結束時再以同樣方式還原螢幕原有的對應。

「聲音」效果透過 Core Audio 的程序層級音訊擷取（process tap）聽到 Mac 上所有應用程式的輸出（macOS 14.2 或以上，需要在「僅系統音訊錄製」類別下授權），把每個音訊緩衝區壓縮成一個位準值後丟棄，並以最近一段時間內的最大音量作為基準做正規化，因此音樂本身安靜與否、系統音量大小都不影響效果。標誌用同一套硬體淡入淡出跟隨它，且盡量少地產生過渡：上升一直持續到標誌追上聲音，下降持續到落到聲音位準，穩定音量則用一次寫入保持，然後不再打擾。

這屬於私有 API，是透過分析 CoreBrightness 找到的（細節、量測資料與所用工具見 [docs/corebrightnessd.md](docs/corebrightnessd.md) 和 [tools/probes](tools/probes)）。LogoLight 以動態載入的方式使用它；若介面不存在，或 `corebrightnessd` 不接受變更，則退回以 root 執行 Apple 官方文件中的指令（見下文）。亮度與效果依賴直接控制，若不可用則不顯示這些功能。

#### 控制中心控制項目

該控制項目是應用程式內部的 WidgetKit 擴充功能（`Controls/`）。擴充功能必須開啟沙箱，因此它無法直接存取 `corebrightnessd`；而且只有主應用程式才應變更標誌——亮度與效果也在主應用程式裡。主應用程式以 Bundle ID 命名註冊一個 Mach 埠（`app.logolight.LogoLight.control`），擴充功能的沙箱權限僅允許尋找這一個名稱。點按時擴充功能請求主應用程式切換開關，效果等同於按住 Option 點按；若 LogoLight 未執行，會先在背景啟動它。開關狀態變化時，應用程式會重新載入該控制項目。（Apple 只允許應用程式把開關和按鈕加入控制中心，因此那裡沒有亮度滑桿。）

#### 與 Codeman 共用標誌

Codeman 的 Mac 應用程式會在代理工作期間讓標誌閃爍，用的也是同一套淡入淡出，兩個應用程式會互相搶奪。為此，Codeman 的閃爍模組在**第一次**變更標誌前，會把自己的程序 ID 寫入 `~/Library/Application Support/Codeman/logo-fade`，並在標誌恢復正常後刪除該檔案。LogoLight 每秒檢查一次（`LoanWatcher`）：當該檔案指向一個仍在執行的 `codeman-desktop` 程序時，它暫停自己的效果，不向標誌寫入任何內容；期間你設定的亮度或效果會被保留。檔案消失 1.5 秒後（Codeman 會在兩次閃爍之間短暫歸還標誌），LogoLight 會像從睡眠喚醒後那樣重新接管標誌。若 Codeman 被強制結束，檔案會遺留，但對應程序已不存在，因此不算數。應用程式 Info.plist 中的 `LogoLightStepsAsideForCodeman` 鍵就是 Codeman 判斷「這個 LogoLight 會主動讓位」的依據：面對舊版 LogoLight，Codeman 會把標誌交由它處理。

#### 讀取狀態

設定從 `corebrightnessd` 讀取（`LEBacklightMode`）。I/O Registry 中的 `bklb-backlight` PWM 裝置則反映 LED 是否點亮以及有多亮：

```sh
ioreg -r -n bklb-backlight@0 | grep -E '"(enabled|high-period|low-period)"'
```

`high-period / (high-period + low-period)` 即 LED 目前的輸出位準。（選單中不顯示這個值：即時預覽使用的是淡入淡出進度，它與滑桿處於同一刻度。）在不具備直接控制能力時，LogoLight 會在螢幕亮著期間從 `enabled` 讀取設定。它不依賴 `bklb-backlight-enabled` 這個 NVRAM 變數——`corebrightnessd` 只在啟動時讀取它，設定變化時並不會立即更新。

#### 備援方案：Apple 官方文件中的指令

若直接控制不可用，LogoLight 會以 root 身分執行官方文件中的指令，這需要你在 macOS 標準的管理員對話框中輸入密碼。你只需輸入一次：第一次時，對話框會說明它同時會開啟 **「停用密碼」**（該選單項目只在這種情況下或已啟用時顯示），並在完成變更的同時把下面這條 sudoers 規則安裝到 `/etc/sudoers.d/logolight`：

```
lee ALL = (root) NOPASSWD: /usr/bin/defaults write com.apple.CoreBrightness LEBacklightMode -int 0, /usr/bin/defaults delete com.apple.CoreBrightness LEBacklightMode
```

它只允許你的帳號執行這兩條精確指令。安裝前會用 `visudo` 驗證（檔案擁有者為 root、權限 `0440`），因此錯誤的規則不會破壞 `sudo`。此後切換標誌無需密碼。若規則無法安裝，或 `sudo` 不認它，對話框會恢復為原本的行為，並在本次 LogoLight 執行期間不再提供該選項。

取消勾選 **「停用密碼」** 會刪除該規則，之後每次都需輸入密碼。LogoLight 會記住這個選擇，在你重新勾選之前不會再安裝規則。（你也可以手動刪除該檔案：`sudo rm /etc/sudoers.d/logolight`，但下一次輸入密碼時它會被重新安裝。）

</details>

## 從原始碼建置

需要 macOS 14 或以上版本，以及 Xcode 或命令列工具（`xcode-select --install`）。若沒有 Xcode 26 或以上版本，建置時會省略控制中心控制項目（它需要 Xcode 的 App Intents 工具）。

```sh
make test      # 執行測試
make app       # 建置 build/LogoLight.app
make install   # 複製到 /Applications 並開啟
```

`make run` 會建置並直接從 `build/` 開啟應用程式，不進行安裝。

沒有配備 PROLED XDR 顯示器的 MacBook Pro？Debug 建置可以模擬標誌，完全不接觸硬體，選單全部可用，即時預覽也會展示標誌應有的表現（效果、亮度、摩斯電碼）：

```sh
swift build && LOGOLIGHT_SIMULATE=1 .build/debug/LogoLight
```

應用程式預設以 ad-hoc 方式簽署並啟用強化執行階段（hardened runtime）。若要用自己的 Developer ID 簽署、公證並打包散佈：

```sh
xcrun notarytool store-credentials logolight --apple-id YOU@EXAMPLE.COM --team-id TEAMID   # 只需一次
SIGN_IDENTITY="Developer ID Application: Your Name (TEAMID)" NOTARY_PROFILE=logolight make dist
```

`scripts/build-app.sh` 的其他可用覆寫項：`VERSION`、`BUILD_NUMBER`、`BUNDLE_ID`。

LogoLight 無法上架 Mac App Store：它使用私有 API，而 App Store 要求開啟 App 沙箱，這會同時排除直接控制與管理員指令的備援方案。

<details>
<summary><b>專案結構</b>與測試</summary>

| 路徑 | 內容 |
| --- | --- |
| `Sources/LogoLightCore` | `LogoController`；直接控制、亮度與效果（`LightEmitter`、`LogoEffect`）；狀態讀取（I/O Registry）；官方指令、管理員對話框與 sudoers 規則；選單顯示邏輯（`PanelState`） |
| `Sources/LogoLight` | AppKit 選單列應用程式，含控制面板（`ControlPanel.swift`） |
| `Sources/LogoLightTests` | 測試套件（`swift run LogoLightTests`） |
| `Controls` | 控制中心控制項目，由 `scripts/build-app.sh` 建置的擴充功能 |
| `Resources/Info.plist` | 應用程式套件中介資料範本 |
| `scripts/build-app.sh` | 建置並簽署 `LogoLight.app` |
| `scripts/notarize.sh` | 對 Developer ID 建置進行公證、裝訂（staple）並打包（`make dist`） |
| `scripts/deploy-site.sh` | 檢查網站及其下載連結，然後發佈（`make deploy`） |
| `site` | 網站 [logolight.app](https://logolight.app)（Cloudflare Workers 靜態資源） |
| `docs/corebrightnessd.md` | 研究筆記：各鍵的作用、淡入淡出曲線、如何保持某一段亮度 |
| `tools/probes` | 研究過程中使用的命令列工具 |
| `tools/livecheck` | 對照真實標誌驗證亮度與效果 |
| `CLAUDE.md` | 接手本專案時的開發筆記 |

測試是一個普通可執行目標，而非 XCTest bundle，因為 XCTest 與 swift-testing 只在完整安裝 Xcode 時才提供。測試涵蓋：精確的指令、shell 與 AppleScript 引號轉義、sudoers 規則（用真實的 `visudo` 驗證）、元件與效果在模擬 Mac 和假 `corebrightnessd` 上的行為（後者會記錄收到的每個鍵，並依實測曲線推進淡入淡出），以及對本機真實標誌狀態的一次唯讀檢查。

</details>

## 移除

1. 若勾選了 **「停用密碼」**，請先取消勾選（這會移除 sudoers 規則）。
2. 若開啟了 **「登入時啟動」**，請先關閉。
3. 結束 LogoLight 並從「應用程式」中刪除（或執行 `make uninstall`）。

標誌本身的設定會保持你離開時的狀態（效果在應用程式結束時停止）。若不透過應用程式想重新點亮標誌，可執行：
`sudo defaults delete com.apple.CoreBrightness LEBacklightMode`。

## 贊助支持

LogoLight 是免費的。如果你喜歡它，給這個儲存庫一個 ⭐ 能幫助更多 MacBook Pro 使用者發現它。也歡迎請我喝杯咖啡：

<a href="https://buymeacoffee.com/arkon"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" height="48" alt="Buy me a coffee"></a>

## 授權

MIT，詳見 [LICENSE](LICENSE)。

<sub>LogoLight 與 Apple Inc. 無關聯，也未獲其認可。Apple、Apple 標誌和 MacBook Pro 是 Apple Inc. 在美國及其他國家/地區註冊的商標。</sub>
