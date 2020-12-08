'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "2da01bf58868ffa4038f70a1fbe67283",
"assets/assets/images/about-me-icon.png": "4281db0e6eb42170682f9ef0bc15c1cb",
"assets/assets/images/about-me-photo.png": "5c61e1cfa085ac3d2688b8701e09cb02",
"assets/assets/images/graphic-design/ad-design.png": "8d568d22e08038fa5a949ffa6b20019b",
"assets/assets/images/graphic-design/catering-menu-gelato.jpg": "7c26234611c436ead2899faab7cb1997",
"assets/assets/images/graphic-design/coffee-card-design.png": "8907fe7ae762cb1f779a7161deed72cf",
"assets/assets/images/graphic-design/gelato-blueberry.png": "4e119517a3d2392aa271d741870686f1",
"assets/assets/images/graphic-design/gelato-caramel.png": "f8e899708ccb68c405ac990beb1d9e4d",
"assets/assets/images/graphic-design/gelato-espresso.png": "aed35d84d0233ca746876bfd3efe76e7",
"assets/assets/images/graphic-design/gelato-ginger-tumeric-black-pepper.png": "57ebb88733ddbaeef5b3227eb5ca9599",
"assets/assets/images/graphic-design/gelato-honey.png": "965dbf8976335a56d1d07b53eac63332",
"assets/assets/images/graphic-design/gelato-hot-chocolate.png": "1266ee08bd45508b25b48accfbeaa1e6",
"assets/assets/images/graphic-design/gelato-lemon.png": "95edd43d08a31578fb2e67027424f6ed",
"assets/assets/images/graphic-design/gelato-mint-chocolate.png": "d2099ffb9e7c8ff38e217ec7b652f5c2",
"assets/assets/images/graphic-design/gelato-peppermint.png": "7fb149e42daa67921d80050128f0ba33",
"assets/assets/images/graphic-design/gig-poster-1.png": "4159d87f857eb0cde6067749ec12eaa3",
"assets/assets/images/graphic-design/gig-poster-2.png": "35781b0a095595755980cc850a394b7c",
"assets/assets/images/graphic-design/label-background-for-the-vermont-gelato-company.png": "3dbd8d4fc906fc9b91a5adcb0e24692e",
"assets/assets/images/graphic-design/logo-design.png": "fdfba372f9a86eca90aafd418ddf0f48",
"assets/assets/images/graphic-design/logo-redesign-gelato.png": "1d9073a098f99f0846aa487c345ab0f7",
"assets/assets/images/graphic-design/pattern-swatch.png": "a549f83f7314205e9d3108012cc81f00",
"assets/assets/images/graphic-design/promotional-postcard-back.png": "07a2820b998b5701f2edf87ff2338e26",
"assets/assets/images/graphic-design/promotional-postcard-front.png": "4468a8a4e02cae97227554291d83c163",
"assets/assets/images/graphic-design/promotional-poster.png": "5a7fc02e8f1405be18ec11c2922714e4",
"assets/assets/images/graphic-design/restroom-door-signage.png": "d44b29ce9050c845aed65cadab6d515c",
"assets/assets/images/graphic-design/sbsd-healthy-schools-program.png": "9e45076e700542b3f591a89a2dcfb2d4",
"assets/assets/images/graphic-design/store-signage-2.png": "f81570b9e5c681389f512fcc7e5c5723",
"assets/assets/images/graphic-design/store-signage.png": "bef5b8bb303037cadd72f885fc3a42e5",
"assets/assets/images/graphic-design/tri-fold-business-pamphlet.png": "2a12b46deacd255204c483bb1bb295a7",
"assets/assets/images/graphic-design/VCD-mac.png": "e7c56442b7a7fcc941a6b1901dc0e68a",
"assets/assets/images/graphic-design-icon.png": "024f7c76931d8c67cd44bfb0f8a1caa7",
"assets/assets/images/title-icon.png": "eef956364aca49440914150fd40347f6",
"assets/assets/images/website-icon.png": "b41ad6790ea4d1ea309ec540723c2d83",
"assets/assets/images/writing-icon.png": "b2daf567fb5cf66f3deeb69753b60bde",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/NOTICES": "dd9dfe2567bfac2a1c13d82df54d19da",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "b14fcf3ee94e3ace300b192e9e7c8c5d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "831eb40a2d76095849ba4aecd4340f19",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a126c025bab9a1b4d8ac5534af76a208",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "d80ca32233940ebadc5ae5372ccd67f9",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "626c20d367730911e8fe79c973c6bc8b",
"/": "626c20d367730911e8fe79c973c6bc8b",
"main.dart.js": "f7a5580a003abbfb0491f375c8bd9010",
"manifest.json": "e7bc722a1866535822d4b1f8babba57b",
"version.json": "48ff67d7b2b6691e384458771564c310"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
