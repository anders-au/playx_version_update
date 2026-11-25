enum PlayxAppUpdateAvailability {
  unknown,
  notAvailable,
  available,
  inProgress;

  static PlayxAppUpdateAvailability fromUpdateAvailability(num? index) {
    if (index == null ||
        index < 0 ||
        index >= PlayxAppUpdateAvailability.values.length) {
      return PlayxAppUpdateAvailability.unknown;
    }

    return PlayxAppUpdateAvailability.values[index.toInt()];
  }
}

/// A single account-specific response from Android Play Core.
typedef PlayxUpdateOffer = ({
  PlayxAppUpdateAvailability availability,
  int? versionCode,
  bool immediateUpdateAllowed,
});
