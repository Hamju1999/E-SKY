# E-SKY E-Commerce App

## Overview

A B2B electronics marketplace frontend built with Flutter and Dart, simulating a complete procurement workflow between Manufacturers and Retailers. Covers the full user journey from onboarding through product discovery, checkout, shipment tracking, and post-purchase review.

## My Contribution

Solely responsible for all frontend implementation. The team provided the theoretical framework and system design. I translated those into a fully navigable APK.

- **Authentication & Registration Flow:** Built Sign In (`sign_form.dart`) and
  Sign Up (`sign_up_form.dart`) using `StatefulWidget` with `GlobalKey<FormState>`
  state management. Sign Up captures Company Name, Industry (Retailer or
  Manufacturer), Phone Number, Email, and Password. Both forms implement email
  regex validation via `emailValidatorRegExp` and password length enforcement
  (minimum 8 characters) with real-time inline error handling via
  `addError()`/`removeError()` state mutation. Additional flows: OTP verification,
  Forgot Password, and Complete Profile screens.

- **Tabbed Product Catalog:** Built `tab_view.dart` with a `TabBarView` across
  4 product categories (PC, Laptop, Mobile Phones, Gaming Console), each
  rendering a dedicated recommended product list. `NeverScrollableScrollPhysics`
  prevents scroll conflict within the nested layout.

- **Shipment Tracking Interface:** Built `tracking_page.dart` using Flutter's
  `Stepper` widget with a 4-step logistics pipeline: Manufacturer Factory →
  Manufacturer Storage → Company Storage → Retail Shop. Each step carries a
  `Location` model with date formatting via the `intl` package and three
  visual states: `StepState.complete`, `StepState.editing`, `StepState.indexed`.

- **Wallet Payment Module:** Built `wallet_page.dart` with an `AnimationController`
  and `Tween<double>` animation, API-driven user data loading via `ApiService`,
  and a custom `CustomPainter` dollar button rendered with concentric circles.

- **Rating and Review System:** Built `rating_page.dart` using `FlutterRatingBar`
  with half-rating support and heart-icon widgets, a `showDialog` rating submission
  flow via `RatingDialog`, and a review list displaying user avatar, star rating,
  comment text, likes count, and comment count.

- **Language Switching Module:** Built `change_language_page.dart` with a
  10-language selector (Chinese, Spanish, English, Romanian, German, Portuguese,
  Bengali, Russian, Japanese, French) with stateful checkmark selection tracking.

## App Structure

```
lib/
├── main.dart                      # App entry, theme, route table
├── routes.dart                    # Named route map
├── constants.dart                 # Validation error strings, regex
├── theme.dart                     # Global theme
├── size_config.dart               # Responsive sizing
├── api_service.dart               # API integration
├── screens/
│   ├── splash/                    # Splash screen
│   ├── sign_in/                   # Sign in with email/password validation
│   ├── sign_up/                   # Registration with role selection
│   ├── complete_profile/          # Profile completion
│   ├── otp/                       # OTP verification
│   ├── forgot_password/           # Password recovery
│   ├── home/                      # Home with tabbed catalog
│   │   └── components/            # TabView, category cards, product lists
│   ├── product/                   # Product detail, rating, shop
│   ├── payment/                   # Payment and unpaid views
│   ├── shop/                      # Checkout, credit card, cart
│   ├── wallet/                    # Wallet balance module
│   ├── rating/                    # Rating page and dialog
│   ├── tracking_page.dart         # Shipment tracking stepper
│   ├── profile_page.dart          # User profile
│   ├── search_page.dart           # Product search
│   ├── settings/                  # Language, country, password, notifications
│   ├── address/                   # Address form and management
│   ├── faq_page.dart              # FAQ
│   └── notifications_page.dart    # Notifications
├── models/                        # Product, Category, User models
├── category/                      # Category list and cards
└── components/                    # Shared widgets
```

## Technical Stack

- **Framework:** Flutter (Dart)
- **State Management:** StatefulWidget, GlobalKey<FormState>
- **UI Components:** FlutterRatingBar, Stepper, TabBarView, CustomPainter
- **Utilities:** intl (date formatting), flutter_svg, flutter_rating_bar
- **IDE:** Android Studio

## License

MIT License

## Author

**Mohammad Hamza Piracha** |
Data Scientist & Applied AI Engineer |
[LinkedIn](https://www.linkedin.com/in/hamza-piracha) | hamzapiracha@live.com
