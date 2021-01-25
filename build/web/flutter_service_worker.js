'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "08a38db39fbd9765df0d67a22a2738fa",
".git/config": "57e0e951c651f3ce67fd47b863d8f90a",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/update.sample": "7bf1fcc5f411e5ad68c59b68661660ed",
".git/index": "290345d334175db7b753a5bba56dd72c",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "4404885c355a35d7b8564ef40b8711e5",
".git/logs/refs/heads/main": "3a75c44d3fdfc77ca5cb9938689a1aeb",
".git/logs/refs/remotes/origin/main": "77c4243e7c32bfcaa0d677133b3f9887",
".git/objects/03/eaddffb9c0e55fb7b5f9b378d9134d8d75dd37": "87850ce0a3dd72f458581004b58ac0d6",
".git/objects/0b/bb24a78e62d60d797be5433cb63ececb0e3520": "9f1ae20dad7acbb5deb31c83d37f0af3",
".git/objects/15/62608fba1cfe2510f9879e3b8ea5d1ade5580d": "be39b8231b5c0f5137b7ffb9e866e523",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/2c/4476089975dc848b3e213ae507d78b07ee51bf": "3503ac7b25ea923b897484a85b3cd3f7",
".git/objects/2d/663d09ff44e06d1229dc846978866fd0bbcb15": "8006cdcaeda4253b331b69ec56fad366",
".git/objects/2d/8a81f39441d1678ccc55932e140d7e94659b85": "b8ea9d0f34453de643e3cda96d793009",
".git/objects/31/82a7936fe9b18ace02dda1075aafb7f2ac519a": "8372663eff64d0fab77f9a22b3b4376d",
".git/objects/37/4c24d58b2286db47da330d2f52ef8f1abfd522": "816071c31675e4ec64174ecf5bc1626a",
".git/objects/3a/d2b5145635d836a4d160abf8b63ab114775726": "920b1c8be64eeece002a99d54d0594f6",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/4f/0bc0633b40a9f3a5ed17aac2cf6d38c9284f76": "589b0e731d2d79dee6509d1c75924b50",
".git/objects/5a/cbd098e7ee803f75a49b8ae99b5edd9a89aba0": "e510c9b5471321dd0a86e4abbfae4ef4",
".git/objects/5e/408351c892fdef95c41ad3b87427bf69e75b6d": "6ba0a2da9745881758e255a7d0ee0527",
".git/objects/60/d46764760c46841732be1097ce6deeb093c65e": "818ebb5b99a2ddc33926b3c516f604f8",
".git/objects/69/2b574763a028ef548fe42908eefeb9de97f80d": "cd0307535dee04265c464c2778c40ffd",
".git/objects/6d/df0a2bd2e9b89962af1c40eeebf178e92f6e6a": "6cc0514ebd62d5e0ec1cb3f1d718ee9e",
".git/objects/74/bc701be82fe4ebd459ba2303ce4fc5e5dbfb47": "1b48db38f22cd0922e5129f8e6a96ed0",
".git/objects/76/b9e3987b8f91ded0d5da25c6ab4dc84c416a0e": "340e3f69e0f45664fb27e1ab29d90d9b",
".git/objects/77/0955caa21c2404fd17223f250641f99857409b": "8986399e7e0fcb9e4fa824e2f305afed",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7b/26a43ae287545893f903301b352852e7e4e584": "2587fb9f29ad7585d580a5ba76ded1d0",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a8/3a17d54b6dc2156c855c6580301cefc9c8d017": "6525101be8d70b808a809af9c83fa4ad",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/ab/3f97e753c35c9dff57d110cb045e3c739688a4": "367b7c9d72a0c47cb484e2225d93f9db",
".git/objects/b4/aa3140f7cce4c0983b398c58af6b407a6475d5": "8a4e91329a2eedc763177a18ce585aa3",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/bd/87a297cbf23d6d724a9eb58ffc12e6444bcfe7": "5f9cac36e3e5ef29fba4bf5510ec7c8c",
".git/objects/be/d49aa8014b833cc90518db73d3df6b361a11a3": "e97de6621e1d8848adeb40f56c31c6a2",
".git/objects/c1/4f557c88a1223f8d6e4cb3ef18d7baead882a5": "a6db71e25d49a9c7bf209b68ec4dbd4d",
".git/objects/cb/85e3485f56eafbf9cb1d43c6addd213c0b0887": "b4ca8031ed243416a3d4545a309a41d5",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e9/ef6fae23880e64e7bb3b767906925b333977de": "1136acc241a14557498619d20d19318b",
".git/objects/ed/b75c8a2496514b518759ded0d830206b7a4bcd": "78c0de922c3414ec21bf0d08873aa10e",
".git/objects/f2/5787c93ad00665f0f797a43ab397f0628a273e": "59e425d1456034072d902c75d18ec75f",
".git/objects/f5/d8ea005f3706921a9362668dc1c0ed5f5f0840": "37e38d846585af0f70979c241828ad62",
".git/refs/heads/main": "d740a6d022bd10419f501ebae00ced61",
".git/refs/remotes/origin/main": "d740a6d022bd10419f501ebae00ced61",
"assets/AssetManifest.json": "615e0c3eb92a4f8d42ddacda60fbe172",
"assets/assets/onboarding.png": "96479f907eec852b7dcb7fa4ee886574",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/NOTICES": "a734ce24ee6045728df82d79e0ca34cc",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "be562b237c20e7e4fbefae70fd7878b5",
"/": "be562b237c20e7e4fbefae70fd7878b5",
"main.dart.js": "fde5e3ed4a17f8befdf1262165cc3f52",
"manifest.json": "3ebac3cf55b21df18219b4471a194047",
"README.md": "4e8b01d58eebc8909191cf555f4c6e55",
"version.json": "58fc4b39c67550994ceb27018c73845e"
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
