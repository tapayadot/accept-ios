![AcceptSDK](banner-github.png)

![Platform](https://img.shields.io/badge/platform-iOS-blue) ![iOS](https://img.shields.io/badge/iOS-26%2B-blue) [![Docs](https://img.shields.io/badge/docs-tapaya.com-blue)](https://docs.tapaya.com) [![License](https://img.shields.io/badge/license-Apache%202.0-blue)](LICENSE) ![SPM](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-orange)

iOS SDK for integrating Tapaya Accept payment processing into your app.

## Installation

### Swift Package Manager

Add via Xcode: **File → Add Package Dependencies** and enter:

```
https://github.com/tapayadot/accept-ios.git
```

Or add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/tapayadot/accept-ios.git", from: "1.1.0")
]
```

## Usage

### Setup

```swift
import AcceptSDK

// Initialize (call once at app launch)
try await Accept.initialize(demo: isTestMode)

// Authenticate with your merchant token
try await Accept.authenticate(merchantToken: "your-merchant-token")
```

### Card Payment

```swift
let outcome = try await Accept.pay(AcceptCardPaymentIntent(
    amount: 1000,
    requestedCurrency: .eur,
    settlementCurrency: .eur
))

switch outcome {
case .completed(let status):
    print("Payment completed: \(status.paymentToken)")
case .canceled:
    print("Payment canceled")
}
```

### SEPA Instant Credit Transfer

```swift
let outcome = try await Accept.pay(AcceptSepaPaymentIntent(
    amount: 1000,
    requestedCurrency: .eur,
    settlementCurrency: .eur
))

switch outcome {
case .completed(let status):
    print("Payment completed: \(status.paymentToken)")
case .canceled:
    print("Payment canceled")
}
```

### Certis (Czech Instant Transfer)

```swift
let outcome = try await Accept.pay(AcceptCertisPaymentIntent(
    amount: 10000,
    requestedCurrency: .czk,
    settlementCurrency: .czk
))

switch outcome {
case .completed(let status):
    print("Payment completed: \(status.paymentToken)")
case .canceled:
    print("Payment canceled")
}
```

### KYB Onboarding

```swift
let result = try await Accept.presentKyb(prefilling: KybPrefillData(
    businessType: .soleTrader,
    countryCode: "DE",
    legalName: "Acme GmbH",
    businessEmail: "hello@acme.de"
))

switch result {
case .submitted:
    print("KYB submitted")
case .cancelled:
    print("User cancelled")
case .failed:
    print("Onboarding failed")
}
```

## Theming

The SDK UI can be customized with your brand colors and logo. Pass a theme at initialization or update it any time before presenting a flow.

### Colors

```swift
try await Accept.initialize(
    environment: .production,
    theme: AcceptThemeConfiguration(
        colors: .local(AcceptColorTheme(accent: Color(hex: "#2D6A4F")))
    )
)
```

`AcceptColorTheme` properties:

| Property | Description |
|---|---|
| `accent` | Primary brand color — drives buttons, tints, and focus rings |
| `error` | Form validation and error states |
| `warning` | Warning states |
| `success` | Success and confirmation states |
| `brandGradientColors` | Capsule and icon gradient. `nil` derives from `accent`. |
| `brandSubtleGradientColors` | Full-screen background gradient. `nil` derives from `accent`. |

### Images

```swift
try await Accept.initialize(
    environment: .production,
    theme: AcceptThemeConfiguration(
        images: .local(AcceptImageTheme(
            brandLogo: UIImage(named: "CompanyLogo")!,      // square, ~40×40 pt
            toolbarLogo: UIImage(named: "CompanyWordmark")!  // horizontal, transparent bg
        ))
    )
)
```

| Property | Where it appears | Asset guidelines |
|---|---|---|
| `brandLogo` | Flow page header (64×64 pt glass container) | Square, ~40×40 pt, original rendering |
| `toolbarLogo` | Payment screen nav bar | Horizontal, transparent bg, 28 pt height |
| `solidLogo` | Light/colored backgrounds | Horizontal, no gradient |

### Updating the theme after initialization

```swift
try await Accept.setTheme(AcceptThemeConfiguration(
    colors: .local(AcceptColorTheme(accent: .blue))
))
```

The theme is captured when a flow is presented — changing it while a flow is on screen does not affect the running flow.

## Documentation

Full documentation is available at [docs.tapaya.com](https://docs.tapaya.com).

## License

Licensed under the [Apache License, Version 2.0](LICENSE).
