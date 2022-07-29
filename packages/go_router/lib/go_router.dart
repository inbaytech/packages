// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// A declarative router for Flutter based on Navigation 2 supporting
/// deep linking, data-driven routes and more.
library go_router;

export 'src/configuration.dart' show GoRouterState, GoRoute;
export 'src/misc/extensions.dart';
export 'src/misc/inherited_router.dart';
export 'src/misc/refresh_stream.dart';
export 'src/pages/custom_transition_page.dart';
export 'src/platform.dart' show UrlPathStrategy;
export 'src/route_data.dart' show GoRouteData, TypedGoRoute;
export 'src/router.dart';
export 'src/typedefs.dart' show GoRouterPageBuilder, GoRouterRedirect;

/// It seems that locations that arrive from Android/iOS links
/// have already been url-decoded. Because the router expects
/// any path args to be encoded we need re-encode them before
/// they are passed into the GoRouter parser. That means that
/// we need to construct a new RoutInformation object with the
/// encoded path, which means we need access to this class.
export 'src/information_provider.dart' show DebugGoRouteInformation;

