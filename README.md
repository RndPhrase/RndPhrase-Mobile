# RndPhrase Mobile
## Introduction
RndPhrase Mobile is an implementation of the original RndPhrase https://github.com/brinchj/RndPhrase targeted for mobile devices.

The source is written in Titanium making it easy to distribute to either Android or iOS. It is currently under heavy development, but feel free to report any bugs on the issues page of the github project https://github.com/rlindsgaard/RndPhrase-Mobile/issues.

## Installation
In order to get the app onto your device currently you must install Titanium Studio available at appcelerator.com

You can import the repository into a project, and after configuring your device (be it Android or iOS) you can put it down on your phone. Please check the documentation for Titanium Studio for details - they're quite good on the subject.

## Usage
1. When an app asks for your password, navigate to the app and type in seed, password and a hostname where hostname is the domain where your user resides (e.g. for the Facebook app your hostname would be facebook.com)
2. After typing in everything the bottom left textfield will be filled with the generated password. Tap the "copy to clipboard" button.
3. Navigate back to your app asking for a password, and paste in the contents of your clipboard