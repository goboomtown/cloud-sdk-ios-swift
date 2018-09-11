# cloud-sdk-ios-swift: Boomtown Cloud API (iOS Swift 3 and Swift 4)
iOS SDK for the Boomtown Cloud API.

## Overview
Boomtown provides a Cloud API SDK to support providers needing code access to our data layer.

Authentication is used using a pre-shared key and secret, which is generated in our Admin Portal.

## Getting Started
To get started:
 - Clone this repository
 - Generate API keys from the Boomtown Admin Portal
 - Drag the `sdk` folder into your project
 - The sdk has dependencies of AFNetworking, JSONModel, and ISO8601. They can be installed manually (or with sdk.podspec if you use CocoaPods)
 - Configure the API keys in your application

## API Key Generation
To generate an API access token and private-key:
 - Log onto the Admin Portal (https://admin.goboomtown.com)
 - Click Providers in the left menu
 - Find your provider in the list
 - Double click your provider
 - Click API Settings, near the button of the configuration panel
 - Select Sandbox or Live, depending on the state of development
 - Click Re-Generate
 - Copy the access token and private-key, as provided in the pop-up dialog

## iOS SDK Configuration
Prior to using the API, you must configure APIClient.m sources with the generated access token and private-key:
 - Follow the *Getting Started* section, for importing the project into your IDE
 - Use `request.sign(token: secret:)` to sign the request

## Examples
See `Swift3Example` or `Swift4Example` for examples interfacing with the API.

To build the Example:

- cd Swift3Example or Swift4Example
- run `pod install`
- open `Example.xcworkspace` using Xcode
- change __API_TOKEN__ to API token
- change __API_PRIVATE_KEY__ to API private key
- Build
- Enjoy!
