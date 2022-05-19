#!/bin/bash

cd ~/.mozilla/firefox/
if [[ $(grep '\[Profile[^0]\]' profiles.ini) ]]
then PROFPATH=$(grep -E '^\[Profile|^Path|^Default' profiles.ini | grep -1 '^Default=1' | grep '^Path' | cut -c6-)
else PROFPATH=$(grep 'Path=' profiles.ini | sed 's/^Path=//')
fi

ffPath=~/.mozilla/firefox/
firefox_user_profile_path=${ffPath}${PROFPATH}
cd ${firefox_user_profile_path}

rm * 
rm -r *

echo 'user_pref("app.normandy.api_url", "");' > prefs.js
echo 'user_pref("app.normandy.enabled", false);' >> prefs.js
echo 'user_pref("app.shield.optoutstudies.enabled", false);' >> prefs.js
echo 'user_pref("app.update.auto", false);' >> prefs.js
echo 'user_pref("beacon.enabled", false);' >> prefs.js
echo 'user_pref("breakpad.reportURL", "");' >> prefs.js
echo 'user_pref("browser.aboutConfig.showWarning", false);' >> prefs.js
echo 'user_pref("browser.cache.offline.enable", false);' >> prefs.js
echo 'user_pref("browser.cache.disk.enable", false);' >> prefs.js
echo 'user_pref("browser.cache.disk_cache_ssl", false);' >> prefs.js
echo 'user_pref("browser.crashReports.unsubmittedCheck.autoSubmit", false);' >> prefs.js
echo 'user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false);' >> prefs.js
echo 'user_pref("browser.crashReports.unsubmittedCheck.enabled", false);' >> prefs.js
echo 'user_pref("browser.disableResetPrompt", true);' >> prefs.js
echo 'user_pref("browser.newtab.preload", false);' >> prefs.js
echo 'user_pref("browser.newtabpage.activity-stream.section.highlights.includePocket", false);' >> prefs.js
echo 'user_pref("browser.newtabpage.enhanced", false);' >> prefs.js
echo 'user_pref("browser.newtabpage.introShown", true);' >> prefs.js
echo 'user_pref("browser.safebrowsing.appRepURL", "");' >> prefs.js
echo 'user_pref("browser.safebrowsing.blockedURIs.enabled", false);' >> prefs.js
echo 'user_pref("browser.safebrowsing.downloads.enabled", false);' >> prefs.js
echo 'user_pref("browser.safebrowsing.downloads.remote.enabled", false);' >> prefs.js
echo 'user_pref("browser.safebrowsing.downloads.remote.url", "");' >> prefs.js
echo 'user_pref("browser.safebrowsing.enabled", false);' >> prefs.js
echo 'user_pref("browser.safebrowsing.malware.enabled", false);' >> prefs.js
echo 'user_pref("browser.safebrowsing.phishing.enabled", false);' >> prefs.js
echo 'user_pref("browser.selfsupport.url", "");' >> prefs.js
echo 'user_pref("browser.send_pings", false);' >> prefs.js
echo 'user_pref("browser.sessionstore.privacy_level", 2);' >> prefs.js
echo 'user_pref("browser.shell.checkDefaultBrowser", false);' >> prefs.js
echo 'user_pref("browser.startup.homepage_override.mstone", "ignore");' >> prefs.js
echo 'user_pref("browser.tabs.crashReporting.sendReport", false);' >> prefs.js
echo 'user_pref("browser.urlbar.groupLabels.enabled", false);' >> prefs.js
echo 'user_pref("browser.urlbar.quicksuggest.enabled", false);' >> prefs.js
echo 'user_pref("browser.urlbar.speculativeConnect.enabled", false);' >> prefs.js
echo 'user_pref("browser.urlbar.trimURLs", false);' >> prefs.js
echo 'user_pref("datareporting.healthreport.service.enabled", false);' >> prefs.js
echo 'user_pref("datareporting.healthreport.uploadEnabled", false);' >> prefs.js
echo 'user_pref("datareporting.policy.dataSubmissionEnabled", false);' >> prefs.js
echo 'user_pref("device.sensors.ambientLight.enabled", false);' >> prefs.js
echo 'user_pref("device.sensors.enabled", false);' >> prefs.js
echo 'user_pref("device.sensors.motion.enabled", false);' >> prefs.js
echo 'user_pref("device.sensors.orientation.enabled", false);' >> prefs.js
echo 'user_pref("device.sensors.proximity.enabled", false);' >> prefs.js
echo 'user_pref("dom.battery.enabled", false);' >> prefs.js
echo 'user_pref("dom.event.clipboardevents.enabled", false);' >> prefs.js
echo 'user_pref("dom.event.contextmenu.enabled", false);' >> prefs.js
echo 'user_pref("experiments.activeExperiment", false);' >> prefs.js
echo 'user_pref("experiments.enabled", false);' >> prefs.js
echo 'user_pref("experiments.manifest.uri", "");' >> prefs.js
echo 'user_pref("experiments.supported", false);' >> prefs.js
echo 'user_pref("geo.enabled", false);' >> prefs.js
echo 'user_pref("geo.wifi.logging.enabled", false);' >> prefs.js
echo 'user_pref("extensions.CanvasBlocker@kkapsner.de.whiteList", "");' >> prefs.js
echo 'user_pref("extensions.autoDisableScopes", 14);' >> prefs.js
echo 'user_pref("extensions.getAddons.cache.enabled", false);' >> prefs.js
echo 'user_pref("extensions.getAddons.showPane", false);' >> prefs.js
echo 'user_pref("extensions.greasemonkey.stats.optedin", false);' >> prefs.js
echo 'user_pref("extensions.greasemonkey.stats.url", "");' >> prefs.js
echo 'user_pref("extensions.pocket.enabled", false);' >> prefs.js
echo 'user_pref("extensions.shield-recipe-client.api_url", "");' >> prefs.js
echo 'user_pref("extensions.shield-recipe-client.enabled", false);' >> prefs.js
echo 'user_pref("extensions.webservice.discoverURL", "");' >> prefs.js
echo 'user_pref("media.autoplay.default", 0);' >> prefs.js
echo 'user_pref("media.autoplay.enabled", true);' >> prefs.js
echo 'user_pref("media.eme.enabled", false);' >> prefs.js
echo 'user_pref("media.gmp-widevinecdm.enabled", false);' >> prefs.js
echo 'user_pref("media.navigator.enabled", false);' >> prefs.js
echo 'user_pref("media.peerconnection.enabled", false);' >> prefs.js
echo 'user_pref("network.websocket.enabled", false);' >> prefs.js
echo 'user_pref("network.http.sendRefererHeader", 0);' >> prefs.js
echo 'user_pref("network.http.sendSecureXSiteReferrer", false);' >> prefs.js
echo 'user_pref("media.video_stats.enabled", false);' >> prefs.js
echo 'user_pref("network.allow-experiments", false);' >> prefs.js
echo 'user_pref("network.captive-portal-service.enabled", false);' >> prefs.js
echo 'user_pref("network.cookie.cookieBehavior", 1);' >> prefs.js
echo 'user_pref("network.dns.disablePrefetch", true);' >> prefs.js
echo 'user_pref("network.dns.disablePrefetchFromHTTPS", true);' >> prefs.js
echo 'user_pref("network.dnsCacheEntries", 100);' >> prefs.js
echo 'user_pref("network.http.referer.spoofSource", true);' >> prefs.js
echo 'user_pref("network.http.speculative-parallel-limit", 0);' >> prefs.js
echo 'user_pref("network.predictor.enable-prefetch", false);' >> prefs.js
echo 'user_pref("network.predictor.enabled", false);' >> prefs.js
echo 'user_pref("network.prefetch-next", false);' >> prefs.js
echo 'user_pref("network.trr.mode", 5);' >> prefs.js
echo 'user_pref("privacy.donottrackheader.enabled", true);' >> prefs.js
echo 'user_pref("privacy.donottrackheader.value", 1);' >> prefs.js
echo 'user_pref("privacy.trackingprotection.cryptomining.enabled", true);' >> prefs.js
echo 'user_pref("privacy.trackingprotection.enabled", true);' >> prefs.js
echo 'user_pref("privacy.trackingprotection.fingerprinting.enabled", true);' >> prefs.js
echo 'user_pref("privacy.trackingprotection.pbmode.enabled", true);' >> prefs.js
echo 'user_pref("privacy.usercontext.about_newtab_segregation.enabled", true);' >> prefs.js
echo 'user_pref("security.ssl.disable_session_identifiers", true);' >> prefs.js
echo 'user_pref("services.sync.prefs.sync.browser.newtabpage.activity-stream.showSponsoredTopSite", false);' >> prefs.js
echo 'user_pref("signon.autofillForms", false);' >> prefs.js
echo 'user_pref("browser.formfill.enable", false);' >> prefs.js
echo 'user_pref("toolkit.telemetry.archive.enabled", false);' >> prefs.js
echo 'user_pref("toolkit.telemetry.bhrPing.enabled", false);' >> prefs.js
echo 'user_pref("toolkit.telemetry.cachedClientID", "");' >> prefs.js
echo 'user_pref("toolkit.telemetry.enabled", false);' >> prefs.js
echo 'user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);' >> prefs.js
echo 'user_pref("toolkit.telemetry.hybridContent.enabled", false);' >> prefs.js
echo 'user_pref("toolkit.telemetry.newProfilePing.enabled", false);' >> prefs.js
echo 'user_pref("toolkit.telemetry.prompted", 2);' >> prefs.js
echo 'user_pref("toolkit.telemetry.rejected", true);' >> prefs.js
echo 'user_pref("toolkit.telemetry.reportingpolicy.firstRun", false);' >> prefs.js
echo 'user_pref("toolkit.telemetry.server", "");' >> prefs.js
echo 'user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);' >> prefs.js
echo 'user_pref("toolkit.telemetry.unified", false);' >> prefs.js
echo 'user_pref("toolkit.telemetry.unifiedIsOptIn", false);' >> prefs.js
echo 'user_pref("toolkit.telemetry.updatePing.enabled", false);' >> prefs.js
echo 'user_pref("webgl.disabled", true);' >> prefs.js
echo 'user_pref("webgl.renderer-string-override", " ");' >> prefs.js
echo 'user_pref("webgl.vendor-string-override", " ");' >> prefs.js

echo '{' > policies.json
echo '  "policies": {' >> policies.json
echo '    "CaptivePortal": false,' >> policies.json
echo '    "DNSOverHTTPS": {' >> policies.json
echo '      "Enabled": false' >> policies.json
echo '    },' >> policies.json
echo '    "DisableFirefoxStudies": true,' >> policies.json
echo '    "DisableTelemetry": true' >> policies.json
echo '  }' >> policies.json
echo '}' >> policies.json

mkdir extensions

cd extensions/

wget https://github.com/CYB3R-G0D/Firefox-privacy-tweaks/raw/main/extensions/CanvasBlocker%40kkapsner.de.xpi
wget https://github.com/CYB3R-G0D/Firefox-privacy-tweaks/raw/main/extensions/CookieAutoDelete%40kennydo.com.xpi
wget https://github.com/CYB3R-G0D/Firefox-privacy-tweaks/raw/main/extensions/https-everywhere%40eff.org.xpi
wget https://github.com/CYB3R-G0D/Firefox-privacy-tweaks/raw/main/extensions/jid1-MnnxcxisBPnSXQ%40jetpack.xpi
wget https://github.com/CYB3R-G0D/Firefox-privacy-tweaks/raw/main/extensions/uBlock0%40raymondhill.net.xpi
wget https://github.com/CYB3R-G0D/Firefox-privacy-tweaks/raw/main/extensions/%7B74145f27-f039-47ce-a470-a662b129930a%7D.xpi
wget https://github.com/CYB3R-G0D/Firefox-privacy-tweaks/raw/main/extensions/duckduckgo_privacy_essentials-2022.4.26-fx.xpi

echo $'\e[1;31m'Script by https://github.com/CYB3R-G0D/$'\e[m'
