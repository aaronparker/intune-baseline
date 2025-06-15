# Policies

| Name | Description |
| ---- | ----------- |
| Prod-Windows-AllDevice-CompliancePolicy | User-based Windows compliance policy that applies to all default scenarios including Windows PCs, Windows 365, and AVD single session. |
| Prod-Windows-AzureVirtualDesktop-CompliancePolicy | Device-based Windows compliance policy that applies to Azure Virtual Desktop multi-session - assign to All Devices with a filter that includes AVD multi-session hosts or an Entra ID group that targets those session hosts. |
| Prod-Windows-Windows365-CompliancePolicy | Compliance policy for Windows 365 Cloud PCs (for feature that are not supported, e.g. BitLocker). Devices with a filter that includes Cloud PCs or an Entra ID group that targets those session hosts. |
| Prod-Windows-AppLocker-AuditMode-Device | Places devices into AppLocker audit mode. Note issues documented here: https://docs.microsoft.com/en-us/mem/autopilot/policy-conflicts. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-AppLocker-EnforcedMode-Device | Places devices into AppLocker enforced mode. Note issues documented here: https://docs.microsoft.com/en-us/mem/autopilot/policy-conflicts. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-BitLocker | Windows BitLocker settings to enable encryption for fixed drives with the default AES 128 bit XTS encryption, enable encryption for standard users and backup of the key to Entra ID. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| 0_Prod-Windows-ASR-AllAudit-Device | All Attack Surface Reduction rules in Audit mode. https://learn.microsoft.com/en-us/defender-endpoint/attack-surface-reduction-rules-reference. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| 1_Prod-Windows-ASR-StandardBlock-Device | Standard Protection Attack Surface Reduction rules in Block mode, with all other ASR rules in Audit mode. https://learn.microsoft.com/en-us/defender-endpoint/attack-surface-reduction-rules-reference. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| 2_Prod-Windows-ASR-AllBlock-Device | Puts all rules into block mode - this includes 'Block execution of potentially obfuscated scripts' which affects AVD session hosts. https://learn.microsoft.com/en-us/defender-endpoint/attack-surface-reduction-rules-reference. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-AzureVirtualDesktop-RemoteDesktop-Device | Remote Desktop settings to apply to Azure Virtual Desktop and Windows 365 devices. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-BaselinePolicies-Device | Baseline configurations and policies to enable corporate device experience, restrict Windows consumer features, and configure basic lockdown on corporate device. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-BaselinePolicies-User | Standard Windows corporate user interface settings to restrict access to consumer features and Microsoft accounts, configures Start menu and Taskbar options, hides public links in the Microsoft Store, etc. Apply to All Users (optionally with filters) or Entra ID user groups. |
| Prod-Windows-EnableCredentialGuard-Device | Enable Hypervisor Code Protected Integrity and Credential Guard without UEFI lock for safe approach to this security setting. Use this policy as a baseline and when no other policies are managing this setting. Credential Guard will break authentication to Azure Files where virtual machines are using account keys instead of Kerberos. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-EnableDeliveryOptimization-Device | Windows 10/11 Delivery Optimization settings. Validate Windows Autopilot and application deployment functionality after applying to devices. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-EnableSmartScreenPhishingProtection-Device | Microsoft Defender SmartScreen settings for Windows Explorer (Windows 10, Windows 11), and Phishing Protection in Windows 11. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-EnableStorageSense-Device | Storage Sense settings to clear disk space including OneDrive and Downloads folders. Note - this will remove files older than 60 days from the users' Downloads folder and Recycle Bin. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-GoogleChrome-Device | Baseline application policy settings for Google Chrome. This policy will lockdown Chrome, including preventing signing into the browser with a Google account. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-GoogleChrome-Extensions-Device | Configures extension settings in Google Chrome - prevents users from adding extensions, and configures a list of force installed extensions. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-Microsoft365Apps-Device | Configure Microsoft 365 Apps settings - validate channel. Assumes a single Microsoft 365 Apps package has been deployed, incluing Project and Visio - viewer mode is enabled so that users without a license can use these applications in viewer mode. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-Microsoft365Apps-User | Configure user targeted policy settings for the Microsoft 365 Apps. Apply to All Users (optionally with filters) or Entra ID user groups. |
| Prod-Windows-MicrosoftDefenderAntivirus-Device | Microsoft Defender antivirus and antimalware settings. Note 'Local Admin Merge' is enabled. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-MicrosoftDefenderExclusions | Folder path exclusions to support Intune clients. Exclusions may need to be updated in MDE as well. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-MicrosoftDefenderUpdateControls-Device | Configures Microsoft Defender update channels. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-MicrosoftEdge-Device | Baseline Microsoft Edge settings - enforce SmartScreen, sync, basic browser settings. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-MicrosoftEdge-Extensions-AVDW365-Device | Configures extension settings in Microsoft Edge - prevents users from adding extensions, and configures a list of force installed extensions. Adds: Microsoft Editor, uBlock Origin, My Apps Secure Sign-in Extension, Multimedia Redirection. Also enables the Edge sidebar & Copilot default extensions. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-MicrosoftEdge-Extensions-Physical-Device | Configures extension settings in Microsoft Edge - prevents users from adding extensions, and configures a list of force installed extensions. Adds: Microsoft Editor, uBlock Origin, My Apps Secure Sign-in Extension. Also enables the Edge sidebar & Copilot default extensions. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-MicrosoftEdge-ProgressiveWebApps-User | Configure list of force-installed Microsoft 365 Progessive Web Apps that have no Store or Win32 application equivalent. Apply to All Users (optionally with filters) or Entra ID user groups. |
| Prod-Windows-MicrosoftOneDrive-Device | Configure OneDrive for Business including SSO and Known Folder Move. Important - Update tenant GUID from the Entra ID. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-SecurityExperience-Device | Windows Security Center settings and support contact into. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-WindowsUpdateSettings-Device | Settings for Windows Update. Ensure Windows Update for Business reports have been configured for these settings to be applicable. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-QualityUpdates-Broad | Windows Update settings for broad ring Windows 10 PCs.

Note: Feature update deferral is set to 0 - ensure a Feature update ring is assigned to the device.

Assign to a specified group of users. May cause reboots during Autopilot if assigned to devices. |
| Prod-Windows-QualityUpdates-First | Windows Update settings for first ring Windows 10 PCs.

Note: Feature update deferral is set to 0 - ensure a Feature update ring is assigned to the device.

Assign to a specified group of users. May cause reboots during Autopilot if assigned to devices. |

