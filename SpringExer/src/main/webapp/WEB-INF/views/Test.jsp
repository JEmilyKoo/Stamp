<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html lang="ko">

		<head>
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/css.css">
			<meta name="viewport" content="width=device-width, initial-scale=1" id="wixDesktopViewport" />
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<base>
			<meta name="generator" content="Wix.com Website Builder" />
			<link rel="icon" sizes="192x192" href="../../www.wix.com/favicon.ico">
			<link rel="shortcut icon" href="../../www.wix.com/favicon.ico" type="image/x-icon" />
			<link rel="apple-touch-icon" href="../../www.wix.com/favicon.ico" type="image/x-icon" />
			<!-- Safari Pinned Tab Icon -->
			<!-- <link rel="mask-icon" href="https://www.wix.com/favicon.ico"> -->
			<!-- bi -->
			<script data-url="https://static.parastorage.com/services/wix-thunderbolt/dist/tslib.inline.909b9ad8.bundle.min.js">
			/*! For license information please see tslib.inline.909b9ad8.bundle.min.js.LICENSE.txt */
			(self.webpackJsonp__wix_thunderbolt_app = self.webpackJsonp__wix_thunderbolt_app || []).push([
				[8050], {
					31191: function(t, n, r) {
						"use strict";
						r.d(n, {
							ZT: function() {
								return o
							},
							pi: function() {
								return u
							},
							_T: function() {
								return c
							},
							mG: function() {
								return i
							},
							Jh: function() {
								return l
							},
							XA: function() {
								return a
							},
							CR: function() {
								return f
							},
							fl: function() {
								return p
							},
							ev: function() {
								return s
							}
						});
						var e = function(t, n) {
							return(e = Object.setPrototypeOf || {
									__proto__: []
								}
								instanceof Array && function(t, n) {
									t.__proto__ = n
								} || function(t, n) {
									for(var r in n) Object.prototype.hasOwnProperty.call(n, r) && (t[r] = n[r])
								})(t, n)
						};

						function o(t, n) {
							if("function" != typeof n && null !== n) throw new TypeError("Class extends value " + String(n) + " is not a constructor or null");

							function r() {
								this.constructor = t
							}
							e(t, n), t.prototype = null === n ? Object.create(n) : (r.prototype = n.prototype, new r)
						}
						var u = function() {
							return(u = Object.assign || function(t) {
								for(var n, r = 1, e = arguments.length; r < e; r++)
									for(var o in n = arguments[r]) Object.prototype.hasOwnProperty.call(n, o) && (t[o] = n[o]);
								return t
							}).apply(this, arguments)
						};

						function c(t, n) {
							var r = {};
							for(var e in t) Object.prototype.hasOwnProperty.call(t, e) && n.indexOf(e) < 0 && (r[e] = t[e]);
							if(null != t && "function" == typeof Object.getOwnPropertySymbols) {
								var o = 0;
								for(e = Object.getOwnPropertySymbols(t); o < e.length; o++) n.indexOf(e[o]) < 0 && Object.prototype.propertyIsEnumerable.call(t, e[o]) && (r[e[o]] = t[e[o]])
							}
							return r
						}

						function i(t, n, r, e) {
							return new(r || (r = Promise))((function(o, u) {
								function c(t) {
									try {
										l(e.next(t))
									} catch(t) {
										u(t)
									}
								}

								function i(t) {
									try {
										l(e.throw(t))
									} catch(t) {
										u(t)
									}
								}

								function l(t) {
									var n;
									t.done ? o(t.value) : (n = t.value, n instanceof r ? n : new r((function(t) {
										t(n)
									}))).then(c, i)
								}
								l((e = e.apply(t, n || [])).next())
							}))
						}

						function l(t, n) {
							var r, e, o, u, c = {
								label: 0,
								sent: function() {
									if(1 & o[0]) throw o[1];
									return o[1]
								},
								trys: [],
								ops: []
							};
							return u = {
								next: i(0),
								throw: i(1),
								return: i(2)
							}, "function" == typeof Symbol && (u[Symbol.iterator] = function() {
								return this
							}), u;

							function i(u) {
								return function(i) {
									return function(u) {
										if(r) throw new TypeError("Generator is already executing.");
										for(; c;) try {
											if(r = 1, e && (o = 2 & u[0] ? e.return : u[0] ? e.throw || ((o = e.return) && o.call(e), 0) : e.next) && !(o = o.call(e, u[1])).done) return o;
											switch(e = 0, o && (u = [2 & u[0], o.value]), u[0]) {
												case 0:
												case 1:
													o = u;
													break;
												case 4:
													return c.label++, {
														value: u[1],
														done: !1
													};
												case 5:
													c.label++, e = u[1], u = [0];
													continue;
												case 7:
													u = c.ops.pop(), c.trys.pop();
													continue;
												default:
													if(!(o = c.trys, (o = o.length > 0 && o[o.length - 1]) || 6 !== u[0] && 2 !== u[0])) {
														c = 0;
														continue
													}
													if(3 === u[0] && (!o || u[1] > o[0] && u[1] < o[3])) {
														c.label = u[1];
														break
													}
													if(6 === u[0] && c.label < o[1]) {
														c.label = o[1], o = u;
														break
													}
													if(o && c.label < o[2]) {
														c.label = o[2], c.ops.push(u);
														break
													}
													o[2] && c.ops.pop(), c.trys.pop();
													continue
											}
											u = n.call(t, c)
										} catch(t) {
											u = [6, t], e = 0
										} finally {
											r = o = 0
										}
										if(5 & u[0]) throw u[1];
										return {
											value: u[0] ? u[1] : void 0,
											done: !0
										}
									}([u, i])
								}
							}
						}
						Object.create;

						function a(t) {
							var n = "function" == typeof Symbol && Symbol.iterator,
								r = n && t[n],
								e = 0;
							if(r) return r.call(t);
							if(t && "number" == typeof t.length) return {
								next: function() {
									return t && e >= t.length && (t = void 0), {
										value: t && t[e++],
										done: !t
									}
								}
							};
							throw new TypeError(n ? "Object is not iterable." : "Symbol.iterator is not defined.")
						}

						function f(t, n) {
							var r = "function" == typeof Symbol && t[Symbol.iterator];
							if(!r) return t;
							var e, o, u = r.call(t),
								c = [];
							try {
								for(;
									(void 0 === n || n-- > 0) && !(e = u.next()).done;) c.push(e.value)
							} catch(t) {
								o = {
									error: t
								}
							} finally {
								try {
									e && !e.done && (r = u.return) && r.call(u)
								} finally {
									if(o) throw o.error
								}
							}
							return c
						}

						function p() {
							for(var t = [], n = 0; n < arguments.length; n++) t = t.concat(f(arguments[n]));
							return t
						}

						function s(t, n) {
							for(var r = 0, e = n.length, o = t.length; r < e; r++, o++) t[o] = n[r];
							return t
						}
						Object.create
					}
				}
			]);
			//# sourceMappingURL=https://static.parastorage.com/services/wix-thunderbolt/dist/tslib.inline.909b9ad8.bundle.min.js.map
			</script>
			<script data-url="https://static.parastorage.com/services/wix-thunderbolt/dist/bi.inline.cf9319d3.bundle.min.js">
			(self.webpackJsonp__wix_thunderbolt_app = self.webpackJsonp__wix_thunderbolt_app || []).push([
				[2892], {
					64376: function(n, I, N) {
						"use strict";
						var A, E;
						N.d(I, {
								sT: function() {
									return A
								},
								$7: function() {
									return E
								},
								i7: function() {
									return t
								}
							}),
							function(n) {
								n[n.START = 1] = "START", n[n.VISIBLE = 2] = "VISIBLE", n[n.PAGE_FINISH = 33] = "PAGE_FINISH", n[n.FIRST_CDN_RESPONSE = 4] = "FIRST_CDN_RESPONSE", n[n.TBD = -1] = "TBD", n[n.PAGE_NAVIGATION = 101] = "PAGE_NAVIGATION", n[n.PAGE_NAVIGATION_DONE = 103] = "PAGE_NAVIGATION_DONE"
							}(A || (A = {})),
							function(n) {
								n[n.NAVIGATION = 1] = "NAVIGATION", n[n.DYNAMIC_REDIRECT = 2] = "DYNAMIC_REDIRECT", n[n.INNER_ROUTE = 3] = "INNER_ROUTE", n[n.NAVIGATION_ERROR = 4] = "NAVIGATION_ERROR", n[n.CANCELED = 5] = "CANCELED"
							}(E || (E = {}));
						var t = {
							1: "page-navigation",
							2: "page-navigation-redirect",
							3: "page-navigation-inner-route",
							4: "navigation-error",
							5: "navigation-canceled"
						}
					}
				},
				function(n) {
					"use strict";
					n.O(0, [8050, 142], (function() {
						return I = 76702, n(n.s = I);
						var I
					}));
					n.O()
				}
			]);
			//# sourceMappingURL=https://static.parastorage.com/services/wix-thunderbolt/dist/bi.inline.cf9319d3.bundle.min.js.map
			</script>
			<script>
			window.bi.sendBeat(1, 'Init')
			</script>
			<!-- preloading pre-scripts -->
			<!-- renderIndicator -->
			<!-- initial scripts -->
			<script data-url="https://static.parastorage.com/services/wix-thunderbolt/dist/createPlatformWorker.inline.f762923e.bundle.min.js">
			(self.webpackJsonp__wix_thunderbolt_app = self.webpackJsonp__wix_thunderbolt_app || []).push([
				[5457], {
					43423: function(e, r, t) {
						"use strict";
						t.r(r), t.d(r, {
							platformWorkerPromise: function() {
								return l
							}
						});
						var a = t(31191),
							s = window.viewerModel,
							n = s.siteAssets.clientTopology,
							o = s.siteFeatures,
							i = s.siteFeaturesConfigs.platform,
							c = s.experiments,
							p = o.includes("platform");
						var l = p ? function() {
							return(0, a.mG)(this, void 0, void 0, (function() {
								var e, r, t, s, o, p;
								return(0, a.Jh)(this, (function(a) {
									switch(a.label) {
										case 0:
											return e = "platform_create-worker started", performance.mark(e), (r = i.clientWorkerUrl).startsWith("../../localhost_4200/index.html") || r.startsWith("../../bo.wix.com/suricate/index.html") ? [4, (l = i.clientWorkerUrl, u = new Blob(["importScripts('" + l + "');"], {
												type: "application/javascript"
											}), URL.createObjectURL(u))] : [3, 2];
										case 1:
											return s = a.sent(), [3, 3];
										case 2:
											s = r.replace(n.fileRepoUrl, "/_partials"), a.label = 3;
										case 3:
											return t = s, c["specs.thunderbolt.platform_worker_on_dom_interactive"] ? [4, new Promise((function(e) {
												document.addEventListener("readystatechange", (function() {
													"interactive" === document.readyState && e()
												}), {
													once: !0
												})
											}))] : [3, 5];
										case 4:
											a.sent(), a.label = 5;
										case 5:
											return(o = new Worker(t)).postMessage({
												type: "platformScriptsOnPage",
												appsOnPageScriptsUrls: i.appsOnPageScriptsUrls
											}), p = "platform_create-worker ended", performance.mark(p), performance.measure("Create Platform Web Worker", e, p), [2, o]
									}
									var l, u
								}))
							}))
						}() : Promise.resolve()
					}
				},
				function(e) {
					"use strict";
					e.O(0, [8050], (function() {
						return r = 43423, e(e.s = r);
						var r
					}));
					e.O()
				}
			]);
			//# sourceMappingURL=https://static.parastorage.com/services/wix-thunderbolt/dist/createPlatformWorker.inline.f762923e.bundle.min.js.map
			</script>
			<script data-url="https://static.parastorage.com/services/wix-thunderbolt/dist/windowMessageRegister.inline.6ff9ddf9.bundle.min.js">
			(self.webpackJsonp__wix_thunderbolt_app = self.webpackJsonp__wix_thunderbolt_app || []).push([
				[9439], {
					78092: function() {
						"use strict";
						! function(n) {
							var e = new Set,
								t = [],
								a = function(n) {
									var t = [];
									e.forEach((function(e) {
										n.canHandleEvent(e) && t.push(e)
									})), t.forEach((function(t) {
										e.delete(t), n.handleEvent(t)
									}))
								};
							n.addEventListener("message", (function(n) {
								var i = {
										source: n.source,
										data: n.data,
										origin: n.origin
									},
									o = t.find((function(n) {
										return n.canHandleEvent(i)
									}));
								o ? (a(o), o.handleEvent(i)) : e.add(i)
							})), n._addWindowMessageHandler = function(n) {
								t.push(n), a(n)
							}
						}(window)
					}
				},
				function(n) {
					"use strict";
					var e;
					e = 78092, n(n.s = e)
				}
			]);
			//# sourceMappingURL=https://static.parastorage.com/services/wix-thunderbolt/dist/windowMessageRegister.inline.6ff9ddf9.bundle.min.js.map
			</script>
			<script src="../../static.parastorage.com/services/wix-thunderbolt/dist/bootstrap-features.7c45b766.bundle.min.js" async=""></script>
			<script src="../../static.parastorage.com/services/wix-thunderbolt/dist/main.f1e5204b.bundle.min.js" async=""></script>
			<!-- lodash script -->
			<script async="" onload="externalsRegistry.lodash.onload()" src="../../static.parastorage.com/unpkg/lodash%404.17.21/lodash.min.js"></script>
			<!-- react -->
			<script crossorigin src="../../static.parastorage.com/unpkg/react%4016.13.1/umd/react.production.min.js" onload="externalsRegistry.react.onload()" defer=""></script>
			<!-- preloading post-scripts -->
			<link rel="preload" crossorigin="anonymous" as="fetch" href="https://siteassets.parastorage.com/pages/pages/thunderbolt?beckyExperiments=specs.thunderbolt.addressInputAtlasProvider%3Atrue%2Cspecs.thunderbolt.seoFriendlyDropDownMenu%3Atrue%2Cspecs.thunderbolt.FileUploaderPopper%3Atrue%2Ctb_UploadButtonFixValidationNotRequired%3Atrue%2Cspecs.thunderbolt.breakingBekyCache%3Atrue%2Cspecs.thunderbolt.ResponsiveInClassic%3Atrue%2Cspecs.thunderbolt.tb_media_layout_by_effect%3Atrue&amp;contentType=application%2Fjson&amp;dfCk=6&amp;dfVersion=1.1273.0&amp;experiments=bv_cartPageResponsiveLayoutFixer%2Cbv_migrateResponsiveLayoutToSingleLayoutData%2Cbv_migrateResponsiveToVariantsModels%2Cbv_removeMenuDataFromPageJson%2Cbv_remove_add_chat_viewer_fixer%2Cdm_fixMobileHoverBoxDesign%2Cdm_fixMobileSplitInVariantNs&amp;externalBaseUrl=https%3A%2F%2Fjemilykoo.wixsite.com%2Fwebsite&amp;fileId=6ac58fc8.bundle.min&amp;freemiumBanner=true&amp;hasTPAWorkerOnSite=false&amp;isHttps=true&amp;isInSeo=false&amp;isUrlMigrated=true&amp;isWixCodeOnPage=false&amp;isWixCodeOnSite=false&amp;language=ko&amp;metaSiteId=0858e1c1-becd-479d-b78e-4f96e1892037&amp;migratingToOoiWidgetIds=14dd1af6-3e02-63db-0ef2-72fbc7cc3136&amp;module=thunderbolt-platform&amp;originalLanguage=en&amp;pageId=8bcb42_1a81c28fe37b87f578fa6949cf46bbed_414.json&amp;quickActionsMenuEnabled=false&amp;registryLibrariesTopology=%5B%7B%22artifactId%22%3A%22editor-elements%22%2C%22namespace%22%3A%22wixui%22%2C%22url%22%3A%22https%3A%2F%2Fstatic.parastorage.com%2Fservices%2Feditor-elements%2F1.5996.0%22%7D%2C%7B%22artifactId%22%3A%22editor-elements-design-systems%22%2C%22namespace%22%3A%22dsgnsys%22%2C%22url%22%3A%22https%3A%2F%2Fstatic.parastorage.com%2Fservices%2Feditor-elements%2F1.5996.0%22%7D%5D&amp;remoteWidgetStructureBuilderVersion=1.226.0&amp;siteId=e209736b-cfdf-43f1-92e3-cd9a14a1dbb9&amp;siteRevision=414&amp;tbElementsSiteAssets=siteAssets.83a6f573.bundle.min.js&amp;viewMode=desktop&amp;widgetsToPageJsonFilenames=%7B%22c7fddce1-ebf5-46b0-a309-7865384ba63f%22%3A%7B%22pageJsonFilename%22%3A%228a2243_50937a143e5db1ded82cd39650f05c0d_440.json%22%2C%22variations%22%3A%7B%7D%7D%2C%22169204d8-21be-4b45-b263-a997d31723dc%22%3A%7B%22pageJsonFilename%22%3A%228a2243_d5b26c91126b2788609a5fa914c2d8a0_406.json%22%2C%22variations%22%3A%7B%7D%7D%2C%2289c4023a-027e-4d2a-b6b7-0b9d345b508d%22%3A%7B%22pageJsonFilename%22%3A%228a2243_0290d6785da9bf70a35d96280cffbc2a_440.json%22%2C%22variations%22%3A%7B%7D%7D%2C%223dc66bc5-5354-4ce6-a436-bd8394c09b0e%22%3A%7B%22pageJsonFilename%22%3A%228a2243_b1d6e77a37fdcea91ab25d907d31a74e_440.json%22%2C%22variations%22%3A%7B%22edar7%22%3A%7B%22id%22%3A%22edar7%22%2C%22name%22%3A%22edar7%22%2C%22pageJsonFilename%22%3A%228a2243_63bc1b373c73b66e49c1d4cc5a099eda_440.json%22%7D%7D%7D%7D" id="platform_마스터페이지">
			<link rel="preload" crossorigin="anonymous" as="fetch" href="https://siteassets.parastorage.com/pages/pages/thunderbolt?beckyExperiments=specs.thunderbolt.addressInputAtlasProvider%3Atrue%2Cspecs.thunderbolt.seoFriendlyDropDownMenu%3Atrue%2Cspecs.thunderbolt.FileUploaderPopper%3Atrue%2Ctb_UploadButtonFixValidationNotRequired%3Atrue%2Cspecs.thunderbolt.breakingBekyCache%3Atrue%2Cspecs.thunderbolt.ResponsiveInClassic%3Atrue%2Cspecs.thunderbolt.tb_media_layout_by_effect%3Atrue&amp;contentType=application%2Fjson&amp;dfCk=6&amp;dfVersion=1.1273.0&amp;experiments=bv_cartPageResponsiveLayoutFixer%2Cbv_migrateResponsiveLayoutToSingleLayoutData%2Cbv_migrateResponsiveToVariantsModels%2Cbv_removeMenuDataFromPageJson%2Cbv_remove_add_chat_viewer_fixer%2Cdm_fixMobileHoverBoxDesign%2Cdm_fixMobileSplitInVariantNs&amp;externalBaseUrl=https%3A%2F%2Fjemilykoo.wixsite.com%2Fwebsite&amp;fileId=6ac58fc8.bundle.min&amp;freemiumBanner=true&amp;hasTPAWorkerOnSite=false&amp;isHttps=true&amp;isInSeo=false&amp;isUrlMigrated=true&amp;isWixCodeOnPage=false&amp;isWixCodeOnSite=false&amp;language=ko&amp;metaSiteId=0858e1c1-becd-479d-b78e-4f96e1892037&amp;migratingToOoiWidgetIds=14dd1af6-3e02-63db-0ef2-72fbc7cc3136&amp;module=thunderbolt-platform&amp;originalLanguage=en&amp;pageId=8bcb42_c487afff687616e5ae59d7b10f1e6ea4_412.json&amp;quickActionsMenuEnabled=false&amp;registryLibrariesTopology=%5B%7B%22artifactId%22%3A%22editor-elements%22%2C%22namespace%22%3A%22wixui%22%2C%22url%22%3A%22https%3A%2F%2Fstatic.parastorage.com%2Fservices%2Feditor-elements%2F1.5996.0%22%7D%2C%7B%22artifactId%22%3A%22editor-elements-design-systems%22%2C%22namespace%22%3A%22dsgnsys%22%2C%22url%22%3A%22https%3A%2F%2Fstatic.parastorage.com%2Fservices%2Feditor-elements%2F1.5996.0%22%7D%5D&amp;remoteWidgetStructureBuilderVersion=1.226.0&amp;siteId=e209736b-cfdf-43f1-92e3-cd9a14a1dbb9&amp;siteRevision=414&amp;tbElementsSiteAssets=siteAssets.83a6f573.bundle.min.js&amp;viewMode=desktop&amp;widgetsToPageJsonFilenames=%7B%22c7fddce1-ebf5-46b0-a309-7865384ba63f%22%3A%7B%22pageJsonFilename%22%3A%228a2243_50937a143e5db1ded82cd39650f05c0d_440.json%22%2C%22variations%22%3A%7B%7D%7D%2C%22169204d8-21be-4b45-b263-a997d31723dc%22%3A%7B%22pageJsonFilename%22%3A%228a2243_d5b26c91126b2788609a5fa914c2d8a0_406.json%22%2C%22variations%22%3A%7B%7D%7D%2C%2289c4023a-027e-4d2a-b6b7-0b9d345b508d%22%3A%7B%22pageJsonFilename%22%3A%228a2243_0290d6785da9bf70a35d96280cffbc2a_440.json%22%2C%22variations%22%3A%7B%7D%7D%2C%223dc66bc5-5354-4ce6-a436-bd8394c09b0e%22%3A%7B%22pageJsonFilename%22%3A%228a2243_b1d6e77a37fdcea91ab25d907d31a74e_440.json%22%2C%22variations%22%3A%7B%22edar7%22%3A%7B%22id%22%3A%22edar7%22%2C%22name%22%3A%22edar7%22%2C%22pageJsonFilename%22%3A%228a2243_63bc1b373c73b66e49c1d4cc5a099eda_440.json%22%7D%7D%7D%7D" id="platform_가이드아이디">
			<link rel="preload" crossorigin="anonymous" as="script" href="../../static.parastorage.com/services/editor-elements/dist/componentSdks.106fa96a.bundle.min.js" id="componentSdks">
			<link rel="preload" crossorigin="anonymous" as="fetch" href="https://siteassets.parastorage.com/pages/pages/thunderbolt?beckyExperiments=specs.thunderbolt.addressInputAtlasProvider%3Atrue%2Cspecs.thunderbolt.seoFriendlyDropDownMenu%3Atrue%2Cspecs.thunderbolt.FileUploaderPopper%3Atrue%2Ctb_UploadButtonFixValidationNotRequired%3Atrue%2Cspecs.thunderbolt.breakingBekyCache%3Atrue%2Cspecs.thunderbolt.ResponsiveInClassic%3Atrue%2Cspecs.thunderbolt.tb_media_layout_by_effect%3Atrue&amp;contentType=application%2Fjson&amp;deviceType=Desktop&amp;dfCk=6&amp;dfVersion=1.1273.0&amp;experiments=bv_cartPageResponsiveLayoutFixer%2Cbv_migrateResponsiveLayoutToSingleLayoutData%2Cbv_migrateResponsiveToVariantsModels%2Cbv_removeMenuDataFromPageJson%2Cbv_remove_add_chat_viewer_fixer%2Cdm_fixMobileHoverBoxDesign%2Cdm_fixMobileSplitInVariantNs&amp;externalBaseUrl=https%3A%2F%2Fjemilykoo.wixsite.com%2Fwebsite&amp;fileId=6a36ebba.bundle.min&amp;freemiumBanner=true&amp;hasTPAWorkerOnSite=false&amp;isHttps=true&amp;isInSeo=false&amp;isMultilingualEnabled=false&amp;isUrlMigrated=true&amp;isWixCodeOnPage=false&amp;isWixCodeOnSite=false&amp;language=ko&amp;languageResolutionMethod=QueryParam&amp;metaSiteId=0858e1c1-becd-479d-b78e-4f96e1892037&amp;migratingToOoiWidgetIds=14dd1af6-3e02-63db-0ef2-72fbc7cc3136&amp;module=thunderbolt-features&amp;originalLanguage=en&amp;pageId=8bcb42_1a81c28fe37b87f578fa6949cf46bbed_414.json&amp;quickActionsMenuEnabled=false&amp;registryLibrariesTopology=%5B%7B%22artifactId%22%3A%22editor-elements%22%2C%22namespace%22%3A%22wixui%22%2C%22url%22%3A%22https%3A%2F%2Fstatic.parastorage.com%2Fservices%2Feditor-elements%2F1.5996.0%22%7D%2C%7B%22artifactId%22%3A%22editor-elements-design-systems%22%2C%22namespace%22%3A%22dsgnsys%22%2C%22url%22%3A%22https%3A%2F%2Fstatic.parastorage.com%2Fservices%2Feditor-elements%2F1.5996.0%22%7D%5D&amp;remoteWidgetStructureBuilderVersion=1.226.0&amp;siteId=e209736b-cfdf-43f1-92e3-cd9a14a1dbb9&amp;siteRevision=414&amp;staticHTMLComponentUrl=https%3A%2F%2Fjemilykoo-wixsite-com.filesusr.com%2F&amp;tbElementsSiteAssets=siteAssets.83a6f573.bundle.min.js&amp;useSandboxInHTMLComp=true&amp;viewMode=desktop&amp;widgetsToPageJsonFilenames=%7B%22c7fddce1-ebf5-46b0-a309-7865384ba63f%22%3A%7B%22pageJsonFilename%22%3A%228a2243_50937a143e5db1ded82cd39650f05c0d_440.json%22%2C%22variations%22%3A%7B%7D%7D%2C%22169204d8-21be-4b45-b263-a997d31723dc%22%3A%7B%22pageJsonFilename%22%3A%228a2243_d5b26c91126b2788609a5fa914c2d8a0_406.json%22%2C%22variations%22%3A%7B%7D%7D%2C%2289c4023a-027e-4d2a-b6b7-0b9d345b508d%22%3A%7B%22pageJsonFilename%22%3A%228a2243_0290d6785da9bf70a35d96280cffbc2a_440.json%22%2C%22variations%22%3A%7B%7D%7D%2C%223dc66bc5-5354-4ce6-a436-bd8394c09b0e%22%3A%7B%22pageJsonFilename%22%3A%228a2243_b1d6e77a37fdcea91ab25d907d31a74e_440.json%22%2C%22variations%22%3A%7B%22edar7%22%3A%7B%22id%22%3A%22edar7%22%2C%22name%22%3A%22edar7%22%2C%22pageJsonFilename%22%3A%228a2243_63bc1b373c73b66e49c1d4cc5a099eda_440.json%22%7D%7D%7D%7D" id="features_마스터페이지">
			<link rel="preload" crossorigin="anonymous" as="fetch" href="https://siteassets.parastorage.com/pages/pages/thunderbolt?beckyExperiments=specs.thunderbolt.addressInputAtlasProvider%3Atrue%2Cspecs.thunderbolt.seoFriendlyDropDownMenu%3Atrue%2Cspecs.thunderbolt.FileUploaderPopper%3Atrue%2Ctb_UploadButtonFixValidationNotRequired%3Atrue%2Cspecs.thunderbolt.breakingBekyCache%3Atrue%2Cspecs.thunderbolt.ResponsiveInClassic%3Atrue%2Cspecs.thunderbolt.tb_media_layout_by_effect%3Atrue&amp;contentType=application%2Fjson&amp;deviceType=Desktop&amp;dfCk=6&amp;dfVersion=1.1273.0&amp;experiments=bv_cartPageResponsiveLayoutFixer%2Cbv_migrateResponsiveLayoutToSingleLayoutData%2Cbv_migrateResponsiveToVariantsModels%2Cbv_removeMenuDataFromPageJson%2Cbv_remove_add_chat_viewer_fixer%2Cdm_fixMobileHoverBoxDesign%2Cdm_fixMobileSplitInVariantNs&amp;externalBaseUrl=https%3A%2F%2Fjemilykoo.wixsite.com%2Fwebsite&amp;fileId=6a36ebba.bundle.min&amp;freemiumBanner=true&amp;hasTPAWorkerOnSite=false&amp;isHttps=true&amp;isInSeo=false&amp;isMultilingualEnabled=false&amp;isUrlMigrated=true&amp;isWixCodeOnPage=false&amp;isWixCodeOnSite=false&amp;language=ko&amp;languageResolutionMethod=QueryParam&amp;metaSiteId=0858e1c1-becd-479d-b78e-4f96e1892037&amp;migratingToOoiWidgetIds=14dd1af6-3e02-63db-0ef2-72fbc7cc3136&amp;module=thunderbolt-features&amp;originalLanguage=en&amp;pageId=8bcb42_c487afff687616e5ae59d7b10f1e6ea4_412.json&amp;quickActionsMenuEnabled=false&amp;registryLibrariesTopology=%5B%7B%22artifactId%22%3A%22editor-elements%22%2C%22namespace%22%3A%22wixui%22%2C%22url%22%3A%22https%3A%2F%2Fstatic.parastorage.com%2Fservices%2Feditor-elements%2F1.5996.0%22%7D%2C%7B%22artifactId%22%3A%22editor-elements-design-systems%22%2C%22namespace%22%3A%22dsgnsys%22%2C%22url%22%3A%22https%3A%2F%2Fstatic.parastorage.com%2Fservices%2Feditor-elements%2F1.5996.0%22%7D%5D&amp;remoteWidgetStructureBuilderVersion=1.226.0&amp;siteId=e209736b-cfdf-43f1-92e3-cd9a14a1dbb9&amp;siteRevision=414&amp;staticHTMLComponentUrl=https%3A%2F%2Fjemilykoo-wixsite-com.filesusr.com%2F&amp;tbElementsSiteAssets=siteAssets.83a6f573.bundle.min.js&amp;useSandboxInHTMLComp=true&amp;viewMode=desktop&amp;widgetsToPageJsonFilenames=%7B%22c7fddce1-ebf5-46b0-a309-7865384ba63f%22%3A%7B%22pageJsonFilename%22%3A%228a2243_50937a143e5db1ded82cd39650f05c0d_440.json%22%2C%22variations%22%3A%7B%7D%7D%2C%22169204d8-21be-4b45-b263-a997d31723dc%22%3A%7B%22pageJsonFilename%22%3A%228a2243_d5b26c91126b2788609a5fa914c2d8a0_406.json%22%2C%22variations%22%3A%7B%7D%7D%2C%2289c4023a-027e-4d2a-b6b7-0b9d345b508d%22%3A%7B%22pageJsonFilename%22%3A%228a2243_0290d6785da9bf70a35d96280cffbc2a_440.json%22%2C%22variations%22%3A%7B%7D%7D%2C%223dc66bc5-5354-4ce6-a436-bd8394c09b0e%22%3A%7B%22pageJsonFilename%22%3A%228a2243_b1d6e77a37fdcea91ab25d907d31a74e_440.json%22%2C%22variations%22%3A%7B%22edar7%22%3A%7B%22id%22%3A%22edar7%22%2C%22name%22%3A%22edar7%22%2C%22pageJsonFilename%22%3A%228a2243_63bc1b373c73b66e49c1d4cc5a099eda_440.json%22%7D%7D%7D%7D" id="features_가이드아이디">
			<!-- tbElements css -->
			<!-- Initial CSS -->
			<style data-url="https://static.parastorage.com/services/wix-thunderbolt/dist/main.4e04281f.min.css">
			a,
			abbr,
			acronym,
			address,
			applet,
			b,
			big,
			blockquote,
			body,
			button,
			caption,
			center,
			cite,
			code,
			dd,
			del,
			dfn,
			div,
			dl,
			dt,
			em,
			fieldset,
			font,
			footer,
			form,
			h1,
			h2,
			h3,
			h4,
			h5,
			h6,
			header,
			html,
			i,
			iframe,
			img,
			ins,
			kbd,
			label,
			legend,
			li,
			nav,
			object,
			ol,
			p,
			pre,
			q,
			s,
			samp,
			section,
			small,
			span,
			strike,
			strong,
			sub,
			sup,
			table,
			tbody,
			td,
			tfoot,
			th,
			thead,
			title,
			tr,
			tt,
			u,
			ul,
			var {
				margin: 0;
				padding: 0;
				border: 0;
				outline: 0;
				vertical-align: baseline;
				background: transparent
			}
			
			body {
				font-size: 10px;
				font-family: Arial, Helvetica, sans-serif
			}
			
			input,
			select,
			textarea {
				font-family: Helvetica, Arial, sans-serif;
				box-sizing: border-box
			}
			
			ol,
			ul {
				list-style: none
			}
			
			blockquote,
			q {
				quotes: none
			}
			
			ins {
				text-decoration: none
			}
			
			del {
				text-decoration: line-through
			}
			
			table {
				border-collapse: collapse;
				border-spacing: 0
			}
			
			a {
				cursor: pointer;
				text-decoration: none
			}
			
			body,
			html {
				height: 100%
			}
			
			body {
				overflow-x: auto;
				overflow-y: scroll
			}
			
			body.overflowHidden {
				overflow: hidden
			}
			
			.testStyles {
				overflow-y: hidden
			}
			
			.reset-button {
				background: none;
				border: 0;
				outline: 0;
				color: inherit;
				font: inherit;
				line-height: normal;
				overflow: visible;
				padding: 0;
				-webkit-appearance: none;
				-webkit-user-select: none;
				-moz-user-select: none;
				-ms-user-select: none
			}
			
			:focus {
				outline: none
			}
			
			body.모바일최적화 {
				overflow-x: hidden;
				overflow-y: scroll
			}
			
			body.모바일최적화:not(.responsive) #SITE_CONTAINER {
				width: 320px;
				overflow-x: visible;
				position: relative
			}
			
			body.모바일최적화:not(.responsive):not(.blockSiteScrolling) #SITE_CONTAINER {
				margin: 0 auto
			}
			
			body.모바일최적화>* {
				max-width: 100%!important
			}
			
			body.모바일최적화 #site-root {
				overflow-x: hidden;
				overflow-y: hidden
			}
			
			body.모바일비최적화 #SITE_CONTAINER #site-root {
				overflow-x: hidden;
				overflow-y: auto
			}
			
			body.모바일비최적화.fullScreenMode {
				background-color: #5f6360
			}
			
			body.모바일비최적화.fullScreenMode #MOBILE_ACTIONS_MENU,
			body.모바일비최적화.fullScreenMode #site-root,
			body.모바일비최적화.fullScreenMode #SITE_BACKGROUND,
			body.fullScreenMode #WIX_ADS {
				visibility: hidden
			}
			
			body.fullScreenMode {
				overflow-x: hidden!important;
				overflow-y: hidden!important
			}
			
			body.fullScreenMode.모바일최적화 #TINY_MENU {
				opacity: 0;
				pointer-events: none
			}
			
			body.fullScreenMode-scrollable.모바일최적화 {
				overflow-x: hidden!important;
				overflow-y: auto!important
			}
			
			body.fullScreenMode-scrollable.모바일최적화 #마스터페이지,
			body.fullScreenMode-scrollable.모바일최적화 #site-root {
				overflow-x: hidden!important;
				overflow-y: hidden!important
			}
			
			body.fullScreenMode-scrollable.모바일최적화 #마스터페이지,
			body.fullScreenMode-scrollable.모바일최적화 #SITE_BACKGROUND {
				height: auto!important
			}
			
			body.fullScreenMode-scrollable.모바일최적화 #마스터페이지.메시레이아웃 {
				height: 0!important
			}
			
			body.blockSiteScrolling {
				position: fixed;
				width: 100%;
				overflow: hidden
			}
			
			body.blockSiteScrolling #SITE_CONTAINER {
				margin-top: calc(var(--blocked-site-scroll-margin-top) * -1)
			}
			
			.fullScreenOverlay {
				z-index: 1005;
				position: fixed;
				left: 0;
				top: -60px;
				right: 0;
				bottom: 0;
				display: flex;
				justify-content: center;
				overflow-y: hidden
			}
			
			.fullScreenOverlay>.fullScreenOverlayContent {
				margin: 0 auto;
				position: absolute;
				right: 0;
				top: 60px;
				left: 0;
				bottom: 0;
				overflow: hidden;
				transform: translateZ(0)
			}
			
			[data-mesh-id$=centeredContent],
			[data-mesh-id$=form],
			[data-mesh-id$=inlineContent] {
				position: relative;
				pointer-events: none
			}
			
			[data-mesh-id$=-gridWrapper],
			[data-mesh-id$=-rotated-wrapper] {
				pointer-events: none
			}
			
			[data-mesh-id$=-gridContainer]>*,
			[data-mesh-id$=-rotated-wrapper]>*,
			[data-mesh-id$=inlineContent]>:not([data-mesh-id$=-gridContainer]) {
				pointer-events: auto
			}
			
			.모바일최적화 #마스터페이지.메시레이아웃 #SOSP_CONTAINER_CUSTOM_ID {
				-ms-grid-row: 2;
				grid-area: 2/1/3/2;
				position: relative
			}
			
			#마스터페이지.메시레이아웃 {
				display: -ms-grid;
				display: grid;
				-ms-grid-rows: max-content max-content min-content max-content;
				grid-template-rows: -webkit-max-content -webkit-max-content -webkit-min-content -webkit-max-content;
				grid-template-rows: max-content max-content min-content max-content;
				-ms-grid-columns: 100%;
				grid-template-columns: 100%;
				align-items: start;
				justify-content: stretch
			}
			
			#마스터페이지.메시레이아웃 #PAGES_CONTAINER,
			#마스터페이지.메시레이아웃 #SITE_HEADER-placeholder,
			#마스터페이지.메시레이아웃 #SITE_HEADER_WRAPPER,
			#마스터페이지.메시레이아웃 #soapAfterPagesContainer,
			#마스터페이지.메시레이아웃 #soapBeforePagesContainer,
			#마스터페이지.메시레이아웃 #SOSP_CONTAINER_CUSTOM_ID[data-state~=mobileView] {
				-ms-grid-column: 1;
				-ms-grid-row-align: start;
				-ms-grid-column-align: start
			}
			
			#마스터페이지.메시레이아웃 #SITE_HEADER-placeholder,
			#마스터페이지.메시레이아웃 #SITE_HEADER_WRAPPER {
				-ms-grid-row: 1;
				grid-area: 1/1/2/2
			}
			
			#마스터페이지.메시레이아웃 #PAGES_CONTAINER,
			#마스터페이지.메시레이아웃 #soapAfterPagesContainer,
			#마스터페이지.메시레이아웃 #soapBeforePagesContainer {
				-ms-grid-row: 3;
				grid-area: 3/1/4/2
			}
			
			#마스터페이지.메시레이아웃 #soapAfterPagesContainer,
			#마스터페이지.메시레이아웃 #soapBeforePagesContainer {
				width: 100%
			}
			
			#마스터페이지.메시레이아웃 #PAGES_CONTAINER {
				align-self: stretch
			}
			
			#마스터페이지.메시레이아웃 main#PAGES_CONTAINER {
				display: block
			}
			
			#마스터페이지.메시레이아웃 #SITE_PAGES,
			#마스터페이지.메시레이아웃 [data-mesh-id=PAGES_CONTAINERcenteredContent],
			#마스터페이지.메시레이아웃 [data-mesh-id=PAGES_CONTAINERinlineContent] {
				height: 100%
			}
			
			#마스터페이지.메시레이아웃.desktop>* {
				width: 100%
			}
			
			#마스터페이지.메시레이아웃 #마스터페이지inlineContent,
			#마스터페이지.메시레이아웃 #PAGES_CONTAINER,
			#마스터페이지.메시레이아웃 #SITE_FOOTER,
			#마스터페이지.메시레이아웃 #SITE_FOOTER_WRAPPER,
			#마스터페이지.메시레이아웃 #SITE_HEADER,
			#마스터페이지.메시레이아웃 #SITE_HEADER_WRAPPER,
			#마스터페이지.메시레이아웃 #SITE_PAGES,
			#site-root {
				position: relative
			}
			
			#site-root {
				min-height: 100%;
				margin: 0 auto
			}
			
			#site-root img:not([src]) {
				visibility: hidden
			}
			
			#site-root svg img:not([src]) {
				visibility: visible
			}
			
			body:not(.responsive) #site-root {
				width: 100%;
				min-width: var(--site-width)
			}
			
			#SITE_CONTAINER {
				position: relative
			}
			
			.auto-generated-link {
				color: inherit
			}
			
			body:not([data-js-loaded]) [data-hide-prejs] {
				visibility: hidden
			}
			
			#SCROLL_TO_BOTTOM,
			#SCROLL_TO_TOP {
				height: 0
			}
			
			[data-z-counter] {
				z-index: 0
			}
			
			[data-z-counter="0"] {
				z-index: auto
			}
			
			.wixSiteProperties {
				-webkit-font-smoothing: antialiased;
				-moz-osx-font-smoothing: grayscale
			}
			</style>
			<script defer src="../../static.parastorage.com/services/tag-manager-client/1.427.0/siteTags.bundle.min.js"></script>
			<meta name="format-detection" content="telephone=no">
			<meta name="skype_toolbar" content="skype_toolbar_parser_compatible">
			<!--pageHtmlEmbeds.head start-->
			<script type="wix/htmlEmbeds" id="pageHtmlEmbeds.head start"></script>
			<script type="wix/htmlEmbeds" id="pageHtmlEmbeds.head end"></script>
			<!--pageHtmlEmbeds.head end-->
			<!-- initCustomElements -->
			<meta name="wix-dynamic-custom-elements" content="DropDownMenu">
			<script data-url="https://static.parastorage.com/services/wix-thunderbolt/dist/initCustomElements.inline.b649141a.bundle.min.js">
			/*! For license information please see initCustomElements.inline.b649141a.bundle.min.js.LICENSE.txt */
			(self.webpackJsonp__wix_thunderbolt_app = self.webpackJsonp__wix_thunderbolt_app || []).push([
				[3727, 2892], {
					46436: function(e) {
						e.exports = function(e) {
							var t = {};

							function i(r) {
								if(t[r]) return t[r].exports;
								var n = t[r] = {
									i: r,
									l: !1,
									exports: {}
								};
								return e[r].call(n.exports, n, n.exports, i), n.l = !0, n.exports
							}
							return i.m = e, i.c = t, i.d = function(e, t, r) {
								i.o(e, t) || Object.defineProperty(e, t, {
									enumerable: !0,
									get: r
								})
							}, i.r = function(e) {
								"undefined" != typeof Symbol && Symbol.toStringTag && Object.defineProperty(e, Symbol.toStringTag, {
									value: "Module"
								}), Object.defineProperty(e, "__esModule", {
									value: !0
								})
							}, i.t = function(e, t) {
								if(1 & t && (e = i(e)), 8 & t) return e;
								if(4 & t && "object" == typeof e && e && e.__esModule) return e;
								var r = Object.create(null);
								if(i.r(r), Object.defineProperty(r, "default", {
										enumerable: !0,
										value: e
									}), 2 & t && "string" != typeof e)
									for(var n in e) i.d(r, n, function(t) {
										return e[t]
									}.bind(null, n));
								return r
							}, i.n = function(e) {
								var t = e && e.__esModule ? function() {
									return e.default
								} : function() {
									return e
								};
								return i.d(t, "a", t), t
							}, i.o = function(e, t) {
								return Object.prototype.hasOwnProperty.call(e, t)
							}, i.p = "", i(i.s = 15)
						}([function(e, t, i) {
							"use strict";
							var r, n = {
									CENTER: "center",
									TOP: "top",
									TOP_LEFT: "top_left",
									TOP_RIGHT: "top_right",
									BOTTOM: "bottom",
									BOTTOM_LEFT: "bottom_left",
									BOTTOM_RIGHT: "bottom_right",
									LEFT: "left",
									RIGHT: "right"
								},
								o = ((r = {})[n.CENTER] = {
									x: .5,
									y: .5
								}, r[n.TOP_LEFT] = {
									x: 0,
									y: 0
								}, r[n.TOP_RIGHT] = {
									x: 1,
									y: .5
								}, r[n.TOP] = {
									x: .5,
									y: 0
								}, r[n.BOTTOM_LEFT] = {
									x: 0,
									y: 1
								}, r[n.BOTTOM_RIGHT] = {
									x: 1,
									y: 1
								}, r[n.BOTTOM] = {
									x: .5,
									y: 1
								}, r[n.RIGHT] = {
									x: 1,
									y: .5
								}, r[n.LEFT] = {
									x: 0,
									y: .5
								}, r),
								a = {
									JPG: "jpg",
									JPEG: "jpeg",
									JPE: "jpe",
									PNG: "png",
									WEBP: "webp",
									WIX_ICO_MP: "wix_ico_mp",
									WIX_MP: "wix_mp",
									GIF: "gif",
									SVG: "svg",
									UNRECOGNIZED: "unrecognized"
								},
								s = [a.JPG, a.JPEG, a.JPE, a.PNG, a.GIF, a.WEBP];
							e.exports = {
								alignTypes: n,
								alignTypesMap: {
									center: "c",
									top: "t",
									top_left: "tl",
									top_right: "tr",
									bottom: "b",
									bottom_left: "bl",
									bottom_right: "br",
									left: "l",
									right: "r"
								},
								transformTypes: {
									FIT: "fit",
									FILL: "fill",
									FILL_FOCAL: "fill_focal",
									CROP: "crop",
									LEGACY_CROP: "legacy_crop",
									LEGACY_FILL: "legacy_fill"
								},
								fittingTypes: {
									SCALE_TO_FILL: "fill",
									SCALE_TO_FIT: "fit",
									STRETCH: "stretch",
									ORIGINAL_SIZE: "original_size",
									TILE: "tile",
									TILE_HORIZONTAL: "tile_horizontal",
									TILE_VERTICAL: "tile_vertical",
									FIT_AND_TILE: "fit_and_tile",
									LEGACY_STRIP_TILE: "legacy_strip_tile",
									LEGACY_STRIP_TILE_HORIZONTAL: "legacy_strip_tile_horizontal",
									LEGACY_STRIP_TILE_VERTICAL: "legacy_strip_tile_vertical",
									LEGACY_STRIP_SCALE_TO_FILL: "legacy_strip_fill",
									LEGACY_STRIP_SCALE_TO_FIT: "legacy_strip_fit",
									LEGACY_STRIP_FIT_AND_TILE: "legacy_strip_fit_and_tile",
									LEGACY_STRIP_ORIGINAL_SIZE: "legacy_strip_original_size",
									LEGACY_ORIGINAL_SIZE: "actual_size",
									LEGACY_FIT_WIDTH: "fitWidth",
									LEGACY_FIT_HEIGHT: "fitHeight",
									LEGACY_FULL: "full",
									LEGACY_BG_FIT_AND_TILE: "legacy_tile",
									LEGACY_BG_FIT_AND_TILE_HORIZONTAL: "legacy_tile_horizontal",
									LEGACY_BG_FIT_AND_TILE_VERTICAL: "legacy_tile_vertical",
									LEGACY_BG_NORMAL: "legacy_normal"
								},
								htmlTag: {
									BG: "bg",
									IMG: "img",
									SVG: "svg"
								},
								upscaleMethods: {
									AUTO: "auto",
									CLASSIC: "classic",
									SUPER: "super"
								},
								upscaleMethodsValues: {
									classic: 1,
									super: 2
								},
								defaultUSM: {
									radius: .66,
									amount: 1,
									threshold: .01
								},
								emptyData: {
									uri: "",
									css: {
										img: {},
										container: {}
									},
									attr: {
										img: {},
										container: {}
									}
								},
								imageQuality: {
									HIGH: "HIGH",
									MEDIUM: "MEDIUM",
									LOW: "LOW",
									TINY: "TINY"
								},
								imageFilters: {
									CONTRAST: "contrast",
									BRIGHTNESS: "brightness",
									SATURATION: "saturation",
									HUE: "hue",
									BLUR: "blur"
								},
								imageScaleDefaults: {
									HIGH: {
										size: 196e4,
										quality: 90,
										maxUpscale: 1
									},
									MEDIUM: {
										size: 36e4,
										quality: 85,
										maxUpscale: 1
									},
									LOW: {
										size: 16e4,
										quality: 80,
										maxUpscale: 1.2
									},
									TINY: {
										size: 0,
										quality: 80,
										maxUpscale: 1.4
									}
								},
								fileType: a,
								supportedExtensions: s,
								webp: {
									LOSSLESS: "lossless",
									LOSSY: "lossy",
									ALPHA: "alpha",
									ANIMATION: "animation"
								},
								noWEBP: {
									lossless: !1,
									lossy: !1,
									alpha: !1,
									animation: !1
								},
								DSKTP_MAX_BG_SITE_LEGACY_WIDTH: 1920,
								MOBILE_MAX_BG_SITE_LEGACY_WIDTH: 1e3,
								DSKTP_MAX_BG_SITE_LEGACY_HEIGHT: 1920,
								MOBILE_MAX_BG_SITE_LEGACY_HEIGHT: 1e3,
								SAFE_TRANSFORMED_AREA: 25e6,
								SUPER_UPSCALE_MODELS: [1.5, 2, 4],
								MAX_DEVICE_PIXEL_RATIO: 2,
								ALIGN_TYPE_TO_FOCAL_POINT: o,
								API_VERSION: "v1"
							}
						}, function(e, t, i) {
							"use strict";
							var r = i(3),
								n = i(0);

							function o(e) {
								var t = [n.fileType.PNG, n.fileType.JPEG, n.fileType.JPG, n.fileType.JPE, n.fileType.WIX_ICO_MP, n.fileType.WIX_MP];
								return r.includes(t, c(e))
							}

							function a(e) {
								return r.includes(["webp"], c(e))
							}

							function s(e) {
								return /(^https?)|(^data)|(^\/\/)/.test(e)
							}

							function c(e) {
								return(/[.]([^.]+)$/.exec(e) && /[.]([^.]+)$/.exec(e)[1] || "").toLowerCase()
							}

							function u(e, t, i, r, o) {
								return o === n.transformTypes.FILL ? function(e, t, i, r) {
									return Math.max(i / e, r / t)
								}(e, t, i, r) : o === n.transformTypes.FIT ? function(e, t, i, r) {
									return Math.min(i / e, r / t)
								}(e, t, i, r) : 1
							}

							function l(e) {
								var t = null;
								return "number" != typeof e.x || isNaN(e.x) || "number" != typeof e.y || isNaN(e.y) || (t = {
									x: g(Math.max(0, Math.min(100, e.x)) / 100, 2),
									y: g(Math.max(0, Math.min(100, e.y)) / 100, 2)
								}), t
							}

							function h(e, t) {
								var i = p(e, t);
								return {
									optimizedScaleFactor: n.imageScaleDefaults[i].maxUpscale,
									upscaleMethodValue: n.upscaleMethodsValues.classic,
									forceUSM: !1
								}
							}

							function d(e, t) {
								var i = p(e, t);
								return {
									optimizedScaleFactor: n.imageScaleDefaults[i].maxUpscale,
									upscaleMethodValue: n.upscaleMethodsValues.classic,
									forceUSM: !1
								}
							}

							function f(e, t, i) {
								return {
									optimizedScaleFactor: r.last(n.SUPER_UPSCALE_MODELS),
									upscaleMethodValue: n.upscaleMethodsValues.super,
									forceUSM: !(n.SUPER_UPSCALE_MODELS.includes(i) || i > r.last(n.SUPER_UPSCALE_MODELS))
								}
							}

							function p(e, t) {
								var i = e * t;
								return i > n.imageScaleDefaults[n.imageQuality.HIGH].size ? n.imageQuality.HIGH : i > n.imageScaleDefaults[n.imageQuality.MEDIUM].size ? n.imageQuality.MEDIUM : i > n.imageScaleDefaults[n.imageQuality.LOW].size ? n.imageQuality.LOW : n.imageQuality.TINY
							}

							function g(e, t) {
								var i = Math.pow(10, t || 0);
								return(e * i / i).toFixed(parseInt(t, 10))
							}
							e.exports.isImageTransformApplicable = function(e) {
								return o(e) && !s(e)
							}, e.exports.isValidRequest = function(e, t, i) {
								return i && t && !(!(o = t.id) || !o.trim() || "none" === o.toLowerCase()) && r.includes(n.fittingTypes, e);
								var o
							}, e.exports.isImageTypeSupported = o, e.exports.isExternalUrl = s, e.exports.isWEBP = a, e.exports.isSEOBot = function(e) {
								return e && e.isSEOBot || !1
							}, e.exports.getFileType = function(e) {
								return function(e) {
									return r.includes([n.fileType.JPEG, n.fileType.JPG, n.fileType.JPE], c(e))
								}(e) ? n.fileType.JPG : function(e) {
									return r.includes(["png"], c(e))
								}(e) ? n.fileType.PNG : a(e) ? n.fileType.WEBP : n.fileType.UNRECOGNIZED
							}, e.exports.getFileExtension = c, e.exports.getFileName = function(e, t) {
								var i = /\.([^.]*)$/;
								if("string" == typeof t && t.length) {
									var o = ["/", "\\", "?", "<", ">", "|", "\u201c", ":", '"'].map(encodeURIComponent),
										a = new RegExp("(" + o.concat(["\\.", "\\*"]).join("|") + ")", "g"),
										s = t,
										c = t.match(i);
									return c && r.includes(n.supportedExtensions, c[1]) && (s = t.replace(i, "")), encodeURIComponent(s).replace(a, "_")
								}
								var u = e.match(/\/(.*?)$/);
								return(u ? u[1] : e).replace(i, "")
							}, e.exports.getAlignedRect = function(e, t, i, r) {
								var o = l(t) || function(e) {
										return void 0 === e && (e = n.alignTypes.CENTER), n.ALIGN_TYPE_TO_FOCAL_POINT[e]
									}(r),
									a = Math.max(0, Math.min(e.width - i.width, o.x * e.width - i.width / 2)),
									s = Math.max(0, Math.min(e.height - i.height, o.y * e.height - i.height / 2));
								return {
									x: e.x ? e.x + a : a,
									y: e.y ? e.y + s : s,
									width: Math.min(e.width, i.width),
									height: Math.min(e.height, i.height)
								}
							}, e.exports.getOverlappingRect = function(e, t) {
								var i = Math.max(0, Math.min(e.width, t.x + t.width) - Math.max(0, t.x)),
									r = Math.max(0, Math.min(e.height, t.y + t.height) - Math.max(0, t.y));
								return i && r && (e.width !== i || e.height !== r) ? {
									x: Math.max(0, t.x),
									y: Math.max(0, t.y),
									width: i,
									height: r
								} : null
							}, e.exports.getScaleFactor = u, e.exports.getTransformData = function(e, t, i, r, o, a) {
								var s = function(e, t, i, r, o) {
										var a, s, c;
										if(a = u(e, t, i, r, o), o === n.transformTypes.FILL ? (s = i, c = r) : o === n.transformTypes.FIT && (s = e * a, c = t * a), s * c > n.SAFE_TRANSFORMED_AREA) {
											var l = Math.sqrt(n.SAFE_TRANSFORMED_AREA / (s * c));
											a = u(e, t, s *= l, c *= l, o)
										}
										return {
											scaleFactor: a,
											width: s,
											height: c
										}
									}(e = e || i.width, t = t || i.height, i.width * r, i.height * r, o),
									c = s.scaleFactor;
								return function(e, t, i, r, o, a, s) {
									var c, u, l = function(e, t, i, r) {
											return {
												classic: h,
												auto: d,
												super: f
											}[r](e, t, i)
										}(e, t, a, o),
										p = l.optimizedScaleFactor,
										g = l.upscaleMethodValue,
										m = l.forceUSM;
									if(a <= p) return {
										width: i,
										height: r,
										scaleFactor: a,
										upscaleMethodValue: g,
										forceUSM: m,
										cssUpscaleNeeded: !1
									};
									switch(s) {
										case n.transformTypes.FILL:
											c = i * (p / a), u = r * (p / a);
											break;
										case n.transformTypes.FIT:
											c = e * p, u = t * p
									}
									return {
										width: c,
										height: u,
										scaleFactor: p,
										upscaleMethodValue: g,
										forceUSM: m,
										cssUpscaleNeeded: !0
									}
								}(e, t, s.width, s.height, a, c, o)
							}, e.exports.getDevicePixelRatio = function(e) {
								return Math.min(e.pixelAspectRatio || 1, n.MAX_DEVICE_PIXEL_RATIO)
							}, e.exports.getAlignment = function(e) {
								return n.alignTypesMap[e.alignment] || n.alignTypesMap[n.alignTypes.CENTER]
							}, e.exports.getPreferredImageQuality = function(e, t) {
								return n.imageScaleDefaults[p(e, t)].quality
							}, e.exports.getDimension = function(e, t, i, r, n) {
								var o = u(e, t, i, r, n);
								return {
									width: Math.round(e * o),
									height: Math.round(t * o)
								}
							}, e.exports.getFocalPoint = l, e.exports.getUpscaleString = function(e) {
								return e && e.upscaleMethod && "string" == typeof e.upscaleMethod && n.upscaleMethods[e.upscaleMethod.toUpperCase()] || n.upscaleMethods.AUTO
							}, e.exports.roundToFixed = g
						}, function(e, t, i) {
							"use strict";
							var r = {
								isWEBP: i(0).noWEBP,
								isObjectFitBrowser: !0
							};
							e.exports.getFeature = function(e) {
								return r[e]
							}, e.exports.setFeature = function(e, t) {
								r[e] = t
							}
						}, function(e, t, i) {
							"use strict";

							function r(e) {
								return(r = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function(e) {
									return typeof e
								} : function(e) {
									return e && "function" == typeof Symbol && e.constructor === Symbol && e !== Symbol.prototype ? "symbol" : typeof e
								})(e)
							}
							e.exports.includes = function(e, t) {
								return e.indexOf ? e.indexOf(t) > -1 : !(!e || "object" !== r(e)) && Object.keys(e).some((function(i) {
									return e[i] === t
								}))
							}, e.exports.last = function(e) {
								return e[e.length - 1]
							}, e.exports.template = function(e) {
								return function(t) {
									var i = e;
									for(var r in t) t.hasOwnProperty(r) && (i = i.replace(new RegExp("\\${" + r + "}", "g"), t[r]));
									return i
								}
							}
						}, function(e, t, i) {
							"use strict";

							function r(e, t) {
								var i = Object.keys(e);
								if(Object.getOwnPropertySymbols) {
									var r = Object.getOwnPropertySymbols(e);
									t && (r = r.filter((function(t) {
										return Object.getOwnPropertyDescriptor(e, t).enumerable
									}))), i.push.apply(i, r)
								}
								return i
							}

							function n(e, t, i) {
								return t in e ? Object.defineProperty(e, t, {
									value: i,
									enumerable: !0,
									configurable: !0,
									writable: !0
								}) : e[t] = i, e
							}
							var o = i(1),
								a = o.isSEOBot,
								s = o.getFileType,
								c = o.getFileName,
								u = o.getFileExtension,
								l = o.getDevicePixelRatio,
								h = o.getUpscaleString,
								d = o.isImageTransformApplicable,
								f = i(7),
								p = f.isMobile,
								g = f.isWEBPBrowserSupport,
								m = i(10),
								b = i(11),
								v = i(0);
							e.exports.getTransform = function(e, t, i, r) {
								var n = a(r),
									o = s(t.id),
									f = c(t.id, t.name),
									p = u(t.id),
									v = !n && g(o),
									T = n ? 1 : l(i),
									_ = {
										fileName: f,
										fileExtension: p,
										fileType: o,
										isWEBPSupport: v,
										fittingType: e,
										preferredExtension: v ? "webp" : p,
										src: {
											id: t.id,
											width: t.width,
											height: t.height,
											isCropped: !1
										},
										focalPoint: {
											x: t.focalPoint && t.focalPoint.x,
											y: t.focalPoint && t.focalPoint.y
										},
										parts: [],
										devicePixelRatio: T,
										quality: 0,
										upscaleMethod: h(r),
										progressive: !0,
										watermark: "",
										unsharpMask: {},
										filters: {}
									};
								return d(t.id) && (m.setTransformParts(_, t, i), b.setTransformOptions(_, r)), _
							}, e.exports.getTarget = function(e, t, i) {
								var o = function(e) {
										for(var t = 1; t < arguments.length; t++) {
											var i = null != arguments[t] ? arguments[t] : {};
											t % 2 ? r(Object(i), !0).forEach((function(t) {
												n(e, t, i[t])
											})) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e, Object.getOwnPropertyDescriptors(i)) : r(Object(i)).forEach((function(t) {
												Object.defineProperty(e, t, Object.getOwnPropertyDescriptor(i, t))
											}))
										}
										return e
									}({}, i),
									a = p();
								switch(e) {
									case v.fittingTypes.LEGACY_BG_FIT_AND_TILE:
									case v.fittingTypes.LEGACY_BG_FIT_AND_TILE_HORIZONTAL:
									case v.fittingTypes.LEGACY_BG_FIT_AND_TILE_VERTICAL:
									case v.fittingTypes.LEGACY_BG_NORMAL:
										var s = a ? v.MOBILE_MAX_BG_SITE_LEGACY_WIDTH : v.DSKTP_MAX_BG_SITE_LEGACY_WIDTH,
											c = a ? v.MOBILE_MAX_BG_SITE_LEGACY_HEIGHT : v.DSKTP_MAX_BG_SITE_LEGACY_HEIGHT;
										o.width = Math.min(s, t.width), o.height = Math.min(c, Math.round(o.width / (t.width / t.height))), o.pixelAspectRatio = 1
								}
								return o
							}
						}, function(e, t, i) {
							"use strict";
							var r = i(2),
								n = i(0);

							function o(e) {
								var t = r.getFeature("isWEBP"),
									i = new window.Image;
								i.onload = function() {
									t[e] = i.width > 0 && i.height > 0, r.setFeature("isWEBP", t)
								}, i.onerror = function() {
									t[e] = !1, r.setFeature("isWEBP", t)
								}, i.src = "data:image/webp;base64," + {
									lossy: "UklGRiIAAABXRUJQVlA4IBYAAAAwAQCdASoBAAEADsD+JaQAA3AAAAAA",
									lossless: "UklGRhoAAABXRUJQVlA4TA0AAAAvAAAAEAcQERGIiP4HAA==",
									alpha: "UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA==",
									animation: "UklGRlIAAABXRUJQVlA4WAoAAAASAAAAAAAAAAAAQU5JTQYAAAD/////AABBTk1GJgAAAAAAAAAAAAAAAAAAAGQAAABWUDhMDQAAAC8AAAAQBxAREYiI/gcA"
								}[e]
							}
							e.exports.checkSupportByUserAgent = function(e, t) {
								var i = t.browser,
									o = t.os;
								if(e) {
									var a, s = parseFloat(i.version),
										c = parseFloat(o.version),
										u = new RegExp(/AppleWebKit\/([\d.]+)/),
										l = null === u.exec(e) ? null : parseFloat(u.exec(e)[1]),
										h = function(e, t, i, r, n) {
											var o = !e.phone && !e.tablet && i.chrome && r >= 23,
												a = e.android && (e.phone || e.tablet) && i.webkit && i.chrome && r >= 25,
												s = e.android && n < 535 && (e.phone || e.tablet) && t >= 4.2 && i.webkit && !i.safari,
												c = i.edge && r >= 18,
												u = !e.firefoxos && i.firefox && !i.webkit && r >= 65;
											return !!(o || a || s || c || u)
										}(o, c, i, s, l);
									r.setFeature("isWEBP", ((a = {})[n.webp.LOSSY] = function(e, t, i, r, n) {
										var o = !e.phone && !e.tablet && i.chrome && r >= 17,
											a = e.android && (e.phone || e.tablet) && i.webkit && i.chrome && r >= 25,
											s = e.android && n < 535 && (e.phone || e.tablet) && t >= 4 && i.webkit,
											c = i.edge && r >= 18,
											u = !e.firefoxos && i.firefox && !i.webkit && r >= 65;
										return !!(o || a || s || c || u)
									}(o, c, i, s, l), a[n.webp.LOSSLESS] = h, a[n.webp.ALPHA] = h, a[n.webp.ANIMATION] = function(e, t, i, r) {
										var n = !e.ios && i.chrome && r >= 32,
											o = i.edge && r >= 18,
											a = !e.firefoxos && i.firefox && !i.webkit && r >= 65;
										return !!(n || o || a)
									}(o, 0, i, s), a))
								}
							}, e.exports.checkSupportByFeatureDetection = function() {
								o(n.webp.LOSSY), o(n.webp.LOSSLESS), o(n.webp.ALPHA), o(n.webp.ANIMATION)
							}, e.exports.isWEBPBrowserSupport = function(e) {
								var t = r.getFeature("isWEBP"),
									i = e === n.fileType.JPG && t[n.webp.LOSSY],
									o = e === n.fileType.PNG && t[n.webp.LOSSLESS],
									a = e === n.fileType.PNG && t[n.webp.ALPHA];
								return i || o && a
							}
						}, function(e, t, i) {
							"use strict";
							var r = i(0).noWEBP,
								n = i(9),
								o = i(5),
								a = i(2);
							e.exports.populateGlobalFeatureSupport = function(e) {
								var t;
								void 0 === e && (e = ""), "undefined" != typeof window && "undefined" != typeof navigator ? ((t = n(navigator.userAgent)).browser.safari || t.os.iphone || t.os.ipad ? a.setFeature("isWEBP", r) : (o.checkSupportByUserAgent(navigator.userAgent, t), o.checkSupportByFeatureDetection()), a.setFeature("isObjectFitBrowser", "objectFit" in window.document.documentElement.style), a.setFeature("isMobile", t.os.phone)) : (t = n(e), o.checkSupportByUserAgent(e, t), a.setFeature("isMobile", t.os.phone))
							}
						}, function(e, t, i) {
							"use strict";
							var r = i(5),
								n = i(2);
							e.exports.isWEBPBrowserSupport = r.isWEBPBrowserSupport, e.exports.isObjectFitBrowserSupport = function() {
								return n.getFeature("isObjectFitBrowser")
							}, e.exports.isMobile = function() {
								return n.getFeature("isMobile")
							}
						}, function(e, t, i) {
							"use strict";
							var r = i(0),
								n = i(1).isImageTransformApplicable,
								o = i(12),
								a = i(4);
							e.exports.getURI = function(e, t, i, s, c) {
								var u = r.emptyData.uri;
								return n(t.id) ? (c = c || a.getTransform(e, t, i, s, c), u = o.getImageURI(c)) : u = t.id, u
							}
						}, function(e, t, i) {
							e.exports = function() {
								"use strict";
								return function(e) {
									var t = {},
										i = {};
									if(!e) return {
										browser: i,
										os: t
									};
									var r = e.match(/Web[kK]it[\/]{0,1}([\d.]+)/),
										n = e.match(/(Android);?[\s\/]+([\d.]+)?/),
										o = !!e.match(/\(Macintosh\; Intel /),
										a = e.match(/(iPad).*OS\s([\d_]+)/),
										s = e.match(/(iPod)(.*OS\s([\d_]+))?/),
										c = !a && e.match(/(iPhone\sOS)\s([\d_]+)/),
										u = e.match(/(webOS|hpwOS)[\s\/]([\d.]+)/),
										l = e.match(/Windows Phone ([\d.]+)/),
										h = u && e.match(/TouchPad/),
										d = e.match(/Kindle\/([\d.]+)/),
										f = e.match(/Silk\/([\d._]+)/),
										p = e.match(/(BlackBerry).*Version\/([\d.]+)/),
										g = e.match(/(BB10).*Version\/([\d.]+)/),
										m = e.match(/(RIM\sTablet\sOS)\s([\d.]+)/),
										b = e.match(/PlayBook/),
										v = e.match(/Chrome\/([\d.]+)/) || e.match(/CriOS\/([\d.]+)/),
										T = e.match(/Firefox\/([\d.]+)/),
										_ = e.match(/MSIE\s([\d.]+)/) || e.match(/Trident\/[\d](?=[^\?]+).*rv:([0-9.].)/),
										y = !v && e.match(/(iPhone|iPod|iPad).*AppleWebKit(?!.*Safari)/),
										I = y || e.match(/Version\/([\d.]+)([^S](Safari)|[^M]*(Mobile)[^S]*(Safari))/),
										E = e.match(/Edge\/(\d{2,}\.[\d\w]+)$/),
										A = e.match(/Opera Mini/);
									return i.webkit = r && !E, i.webkit && (i.version = r[1]), n && (t.android = !0, t.version = n[2]), c && !s && (t.ios = t.iphone = !0, t.version = c[2].replace(/_/g, ".")), a && (t.ios = t.ipad = !0, t.version = a[2].replace(/_/g, ".")), s && (t.ios = t.ipod = !0, t.version = s[3] ? s[3].replace(/_/g, ".") : null), l && (t.wp = !0, t.version = l[1]), u && (t.webos = !0, t.version = u[2]), h && (t.touchpad = !0), p && (t.blackberry = !0, t.version = p[2]), g && (t.bb10 = !0, t.version = g[2]), m && (t.rimtabletos = !0, t.version = m[2]), b && (i.playbook = !0), d && (t.kindle = !0, t.version = d[1]), f && (i.silk = !0, i.version = f[1]), !f && t.android && e.match(/Kindle Fire/) && (i.silk = !0), v && !E && (i.chrome = !0, i.version = v[1]), T && !E && (i.firefox = !0, i.version = T[1]), _ && (i.ie = !0, i.version = _[1]), I && (o || t.ios) && (i.safari = !0, o && (i.version = I[1])), y && (i.webview = !0), E && (i.edge = !0, i.version = E[1]), A && (i.operaMini = !0), t.tablet = !!(a || b || n && !e.match(/Mobile/) || T && e.match(/Tablet/) || (_ || E) && !e.match(/Phone/) && e.match(/Touch/)), t.phone = !(t.tablet || t.ipod || !(n || c || u || p || g || v && e.match(/Android/) || v && e.match(/CriOS\/([\d.]+)/) || T && e.match(/Mobile/) || _ && e.match(/Touch/))), t.mac = o, t.googleBot = !!e.match(/Googlebot\/2.1/), {
										browser: i,
										os: t
									}
								}
							}()
						}, function(e, t, i) {
							"use strict";
							var r = i(0),
								n = i(1),
								o = n.getAlignment,
								a = n.getScaleFactor,
								s = n.getOverlappingRect,
								c = n.getAlignedRect,
								u = n.getTransformData,
								l = n.getFocalPoint;

							function h(e, t) {
								var i = u(e.src.width, e.src.height, t, e.devicePixelRatio, r.transformTypes.FIT, e.upscaleMethod);
								return {
									transformType: r.transformTypes.FILL,
									width: Math.round(i.width),
									height: Math.round(i.height),
									alignment: r.alignTypesMap.center,
									upscale: i.scaleFactor > 1,
									forceUSM: i.forceUSM,
									scaleFactor: i.scaleFactor,
									cssUpscaleNeeded: i.cssUpscaleNeeded,
									upscaleMethodValue: i.upscaleMethodValue
								}
							}

							function d(e) {
								return {
									transformType: r.transformTypes.CROP,
									x: Math.round(e.x),
									y: Math.round(e.y),
									width: Math.round(e.width),
									height: Math.round(e.height),
									upscale: !1,
									forceUSM: !1,
									scaleFactor: 1,
									cssUpscaleNeeded: !1
								}
							}
							e.exports.setTransformParts = function(e, t, i) {
								var n;
								switch(t.crop && (n = s(t, t.crop)) && (e.src.width = n.width, e.src.height = n.height, e.src.cropped = !0, e.parts.push(d(n))), e.fittingType) {
									case r.fittingTypes.SCALE_TO_FIT:
									case r.fittingTypes.LEGACY_FIT_WIDTH:
									case r.fittingTypes.LEGACY_FIT_HEIGHT:
									case r.fittingTypes.LEGACY_FULL:
									case r.fittingTypes.FIT_AND_TILE:
									case r.fittingTypes.LEGACY_BG_FIT_AND_TILE:
									case r.fittingTypes.LEGACY_BG_FIT_AND_TILE_HORIZONTAL:
									case r.fittingTypes.LEGACY_BG_FIT_AND_TILE_VERTICAL:
									case r.fittingTypes.LEGACY_BG_NORMAL:
										e.parts.push(h(e, i));
										break;
									case r.fittingTypes.SCALE_TO_FILL:
										e.parts.push(function(e, t) {
											var i = u(e.src.width, e.src.height, t, e.devicePixelRatio, r.transformTypes.FILL, e.upscaleMethod),
												n = l(e.focalPoint);
											return {
												transformType: n ? r.transformTypes.FILL_FOCAL : r.transformTypes.FILL,
												width: Math.round(i.width),
												height: Math.round(i.height),
												alignment: o(t),
												focalPointX: n && n.x,
												focalPointY: n && n.y,
												upscale: i.scaleFactor > 1,
												forceUSM: i.forceUSM,
												scaleFactor: i.scaleFactor,
												cssUpscaleNeeded: i.cssUpscaleNeeded,
												upscaleMethodValue: i.upscaleMethodValue
											}
										}(e, i));
										break;
									case r.fittingTypes.STRETCH:
										e.parts.push(function(e, t) {
											var i = a(e.src.width, e.src.height, t.width, t.height, r.transformTypes.FILL),
												n = Object.assign({}, t);
											return n.width = e.src.width * i, n.height = e.src.height * i, h(e, n)
										}(e, i));
										break;
									case r.fittingTypes.TILE_HORIZONTAL:
									case r.fittingTypes.TILE_VERTICAL:
									case r.fittingTypes.TILE:
									case r.fittingTypes.LEGACY_ORIGINAL_SIZE:
									case r.fittingTypes.ORIGINAL_SIZE:
										n = c(e.src, e.focalPoint, i, i.alignment), e.src.isCropped ? (Object.assign(e.parts[0], n), e.src.width = n.width, e.src.height = n.height) : e.parts.push(d(n));
										break;
									case r.fittingTypes.LEGACY_STRIP_TILE_HORIZONTAL:
									case r.fittingTypes.LEGACY_STRIP_TILE_VERTICAL:
									case r.fittingTypes.LEGACY_STRIP_TILE:
									case r.fittingTypes.LEGACY_STRIP_ORIGINAL_SIZE:
										e.parts.push(function(e) {
											return {
												transformType: r.transformTypes.LEGACY_CROP,
												width: Math.round(e.width),
												height: Math.round(e.height),
												alignment: o(e),
												upscale: !1,
												forceUSM: !1,
												scaleFactor: 1,
												cssUpscaleNeeded: !1
											}
										}(i));
										break;
									case r.fittingTypes.LEGACY_STRIP_SCALE_TO_FIT:
									case r.fittingTypes.LEGACY_STRIP_FIT_AND_TILE:
										e.parts.push(function(e) {
											return {
												transformType: r.transformTypes.FIT,
												width: Math.round(e.width),
												height: Math.round(e.height),
												upscale: !1,
												forceUSM: !0,
												scaleFactor: 1,
												cssUpscaleNeeded: !1
											}
										}(i));
										break;
									case r.fittingTypes.LEGACY_STRIP_SCALE_TO_FILL:
										e.parts.push(function(e) {
											return {
												transformType: r.transformTypes.LEGACY_FILL,
												width: Math.round(e.width),
												height: Math.round(e.height),
												alignment: o(e),
												upscale: !1,
												forceUSM: !0,
												scaleFactor: 1,
												cssUpscaleNeeded: !1
											}
										}(i))
								}
							}
						}, function(e, t, i) {
							"use strict";
							var r = i(3),
								n = i(0),
								o = i(1),
								a = o.getPreferredImageQuality,
								s = o.roundToFixed;

							function c(e, t, i) {
								return !isNaN(e) && "number" == typeof e && 0 !== e && e >= t && e <= i
							}
							e.exports.setTransformOptions = function(e, t) {
								t = t || {}, e.quality = function(e, t) {
									var i = e.fileType === n.fileType.PNG && e.isWEBPSupport;
									if(e.fileType === n.fileType.JPG || i) {
										var o = r.last(e.parts),
											s = a(o.width, o.height),
											c = t.quality && t.quality >= 5 && t.quality <= 90 ? t.quality : s;
										return c = i ? c + 5 : c, parseInt(c, 10)
									}
									return 0
								}(e, t), e.progressive = function(e) {
									return !1 !== e.progressive
								}(t), e.watermark = function(e) {
									return e.watermark
								}(t), e.unsharpMask = function(e, t) {
									var i;
									return function(e) {
										e = e || {};
										var t = !isNaN(e.radius) && "number" == typeof e.radius && e.radius >= .1 && e.radius <= 500,
											i = !isNaN(e.amount) && "number" == typeof e.amount && e.amount >= 0 && e.amount <= 10,
											r = !isNaN(e.threshold) && "number" == typeof e.threshold && e.threshold >= 0 && e.threshold <= 255;
										return t && i && r
									}(t.unsharpMask) ? i = {
										radius: t.unsharpMask.radius,
										amount: t.unsharpMask.amount,
										threshold: t.unsharpMask.threshold
									} : function(e) {
										return e = e || {}, !isNaN(e.radius) && "number" == typeof e.radius && 0 === e.radius && !isNaN(e.amount) && "number" == typeof e.amount && 0 === e.amount && !isNaN(e.threshold) && "number" == typeof e.threshold && 0 === e.threshold
									}(t.unsharpMask) || function(e) {
										var t = r.last(e.parts);
										return !(t.scaleFactor >= 1) || t.forceUSM
									}(e) && (i = n.defaultUSM), i && (i.radius = s(i.radius, 2), i.amount = s(i.amount, 2), i.threshold = s(i.threshold, 2)), i
								}(e, t), e.filters = function(e) {
									var t = e.filters || {},
										i = {};
									return c(t[n.imageFilters.CONTRAST], -100, 100) && (i[n.imageFilters.CONTRAST] = t[n.imageFilters.CONTRAST]), c(t[n.imageFilters.BRIGHTNESS], -100, 100) && (i[n.imageFilters.BRIGHTNESS] = t[n.imageFilters.BRIGHTNESS]), c(t[n.imageFilters.SATURATION], -100, 100) && (i[n.imageFilters.SATURATION] = t[n.imageFilters.SATURATION]), c(t[n.imageFilters.HUE], -180, 180) && (i[n.imageFilters.HUE] = t[n.imageFilters.HUE]), c(t[n.imageFilters.BLUR], 0, 100) && (i[n.imageFilters.BLUR] = t[n.imageFilters.BLUR]), i
								}(t)
							}
						}, function(e, t, i) {
							"use strict";
							var r, n = i(3),
								o = i(0),
								a = o.imageFilters,
								s = o.transformTypes,
								c = o.API_VERSION,
								u = n.template("fit/w_${width},h_${height}"),
								l = n.template("fill/w_${width},h_${height},al_${alignment}"),
								h = n.template("fill/w_${width},h_${height},fp_${focalPointX}_${focalPointY}"),
								d = n.template("crop/x_${x},y_${y},w_${width},h_${height}"),
								f = n.template("crop/w_${width},h_${height},al_${alignment}"),
								p = n.template("fill/w_${width},h_${height},al_${alignment}"),
								g = n.template(",lg_${upscaleMethodValue}"),
								m = n.template(",q_${quality}"),
								b = n.template(",usm_${radius}_${amount}_${threshold}"),
								v = n.template(",bl"),
								T = n.template(",wm_${watermark}"),
								_ = ((r = {})[a.CONTRAST] = n.template(",con_${contrast}"), r[a.BRIGHTNESS] = n.template(",br_${brightness}"), r[a.SATURATION] = n.template(",sat_${saturation}"), r[a.HUE] = n.template(",hue_${hue}"), r[a.BLUR] = n.template(",blur_${blur}"), r);
							e.exports.getImageURI = function(e) {
								var t = [];
								e.parts.forEach((function(e) {
									switch(e.transformType) {
										case s.CROP:
											t.push(d(e));
											break;
										case s.LEGACY_CROP:
											t.push(f(e));
											break;
										case s.LEGACY_FILL:
											var i = p(e);
											e.upscale && (i += g(e)), t.push(i);
											break;
										case s.FIT:
											var r = u(e);
											e.upscale && (r += g(e)), t.push(r);
											break;
										case s.FILL:
											var n = l(e);
											e.upscale && (n += g(e)), t.push(n);
											break;
										case s.FILL_FOCAL:
											var o = h(e);
											e.upscale && (o += g(e)), t.push(o)
									}
								}));
								var i = t.join("../index.html");
								return e.quality && (i += m(e)), e.unsharpMask && (i += b(e.unsharpMask)), e.progressive || (i += v(e)), e.watermark && (i += T(e)), e.filters && (i += Object.keys(e.filters).map((function(t) {
									return _[t](e.filters)
								})).join("")), e.src.id + "/" + c + "/" + i + "/" + e.fileName + "." + e.preferredExtension
							}
						}, function(e, t, i) {
							"use strict";
							var r = i(14),
								n = i(0),
								o = /^media\//i,
								a = "undefined" != typeof window ? window.devicePixelRatio : 1,
								s = function(e, t) {
									var i = (void 0 === t ? {} : t).baseHostURL;
									return i ? "" + i + e : function(e) {
										return o.test(e) ? "https://static.wixstatic.com/" + e : "https://static.wixstatic.com/media/" + e
									}(e)
								};
							e.exports.populateGlobalFeatureSupport = r.populateGlobalFeatureSupport, e.exports.getScaleToFitImageURL = function(e, t, i, o, c, u) {
								var l = r.getData(n.fittingTypes.SCALE_TO_FIT, {
									id: e,
									width: t,
									height: i,
									name: u && u.name
								}, {
									width: o,
									height: c,
									htmlTag: r.htmlTag.IMG,
									alignment: r.alignTypes.CENTER,
									pixelAspectRatio: a
								}, u);
								return s(l.uri, u)
							}, e.exports.getScaleToFillImageURL = function(e, t, i, o, c, u) {
								var l = r.getData(n.fittingTypes.SCALE_TO_FILL, {
									id: e,
									width: t,
									height: i,
									name: u && u.name,
									focalPoint: {
										x: u && u.focalPoint && u.focalPoint.x,
										y: u && u.focalPoint && u.focalPoint.y
									}
								}, {
									width: o,
									height: c,
									htmlTag: r.htmlTag.IMG,
									alignment: r.alignTypes.CENTER,
									pixelAspectRatio: a
								}, u);
								return s(l.uri, u)
							}, e.exports.getCropImageURL = function(e, t, i, o, c, u, l, h, d, f) {
								var p = r.getData(n.fittingTypes.SCALE_TO_FILL, {
									id: e,
									width: t,
									height: i,
									name: f && f.name,
									crop: {
										x: o,
										y: c,
										width: u,
										height: l
									}
								}, {
									width: h,
									height: d,
									htmlTag: r.htmlTag.IMG,
									alignment: r.alignTypes.CENTER,
									pixelAspectRatio: a
								}, f);
								return s(p.uri, f)
							}
						}, function(e, t, i) {
							"use strict";
							var r = i(0),
								n = i(1).isValidRequest,
								o = i(6).populateGlobalFeatureSupport,
								a = i(4),
								s = i(8).getURI;
							e.exports.populateGlobalFeatureSupport = o, e.exports.getData = function(e, t, i, o) {
								var c = r.emptyData.uri;
								if(n(e, t, i)) {
									var u = a.getTarget(e, t, i),
										l = a.getTransform(e, t, u, o);
									c = s(e, t, u, o, l)
								}
								return {
									uri: c
								}
							}, e.exports.fittingTypes = r.fittingTypes, e.exports.alignTypes = r.alignTypes, e.exports.htmlTag = r.htmlTag, e.exports.upscaleMethods = r.upscaleMethods
						}, function(e, t, i) {
							"use strict";
							var r = i(0),
								n = i(6).populateGlobalFeatureSupport,
								o = i(16),
								a = o.getData,
								s = o.getPlaceholder,
								c = i(13),
								u = c.getScaleToFitImageURL,
								l = c.getScaleToFillImageURL,
								h = c.getCropImageURL;
							n(), e.exports.populateGlobalFeatureSupport = n, e.exports.getData = a, e.exports.getPlaceholder = s, e.exports.fittingTypes = r.fittingTypes, e.exports.alignTypes = r.alignTypes, e.exports.htmlTag = r.htmlTag, e.exports.upscaleMethods = r.upscaleMethods, e.exports.sdk = {
								getScaleToFitImageURL: u,
								getScaleToFillImageURL: l,
								getCropImageURL: h
							}
						}, function(e, t, i) {
							"use strict";

							function r(e, t) {
								var i = Object.keys(e);
								if(Object.getOwnPropertySymbols) {
									var r = Object.getOwnPropertySymbols(e);
									t && (r = r.filter((function(t) {
										return Object.getOwnPropertyDescriptor(e, t).enumerable
									}))), i.push.apply(i, r)
								}
								return i
							}

							function n(e) {
								for(var t = 1; t < arguments.length; t++) {
									var i = null != arguments[t] ? arguments[t] : {};
									t % 2 ? r(Object(i), !0).forEach((function(t) {
										o(e, t, i[t])
									})) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e, Object.getOwnPropertyDescriptors(i)) : r(Object(i)).forEach((function(t) {
										Object.defineProperty(e, t, Object.getOwnPropertyDescriptor(i, t))
									}))
								}
								return e
							}

							function o(e, t, i) {
								return t in e ? Object.defineProperty(e, t, {
									value: i,
									enumerable: !0,
									configurable: !0,
									writable: !0
								}) : e[t] = i, e
							}
							var a = i(0),
								s = i(1).isValidRequest,
								c = i(17),
								u = i(4),
								l = i(8).getURI,
								h = i(22),
								d = h.getScaledDimensions,
								f = h.getBlurValue,
								p = h.getCSSOverrides,
								g = h.validateTargetDimensions,
								m = h.getIsFakeTile,
								b = h.getConvertedFitting;

							function v(e, t, i, r) {
								var n = {};
								if(s(e, t, i)) {
									var o = u.getTarget(e, t, i),
										h = u.getTransform(e, t, o, r);
									n.uri = l(e, t, o, r, h), Object.assign(n, c.getAttributes(h, o))
								} else n = a.emptyData;
								return n
							}
							e.exports.getData = v, e.exports.getPlaceholder = function(e, t, i, r) {
								if(void 0 === r && (r = {}), !s(e, t, i)) return a.emptyData;
								var o = n(n({}, i), g(t, i)),
									c = i.alignment,
									u = i.htmlTag,
									l = r.isSEOBot,
									h = m(e, t, o),
									T = d(e, t, o, l),
									_ = f(o.width, e, l),
									y = b(e, h),
									I = p(e, t, i, c),
									E = v(y, t, n(n({}, T), {}, {
										alignment: c,
										htmlTag: u
									}), {
										filters: {
											blur: _
										}
									}).uri,
									A = v(e, t, n(n({}, o), {}, {
										alignment: c,
										htmlTag: u
									})),
									w = A.attr,
									O = void 0 === w ? {} : w,
									S = A.css;
								return S.img = S.img || {}, S.container = S.container || {}, Object.assign(S.img, I.img), Object.assign(S.container, I.container), {
									uri: E,
									css: S,
									attr: O
								}
							}
						}, function(e, t, i) {
							"use strict";
							var r = i(0).htmlTag,
								n = i(7).isObjectFitBrowserSupport,
								o = i(18),
								a = i(19),
								s = i(20),
								c = i(21);
							e.exports.getAttributes = function(e, t) {
								return(t.htmlTag === r.BG ? o : t.htmlTag === r.SVG ? s : n() ? a : c).get(e, t)
							}
						}, function(e, t, i) {
							"use strict";
							var r = i(0),
								n = r.alignTypes,
								o = r.fittingTypes;
							e.exports.get = function(e, t) {
								var i = {
										css: {
											container: {}
										}
									},
									r = i.css;
								switch(e.fittingType) {
									case o.ORIGINAL_SIZE:
									case o.LEGACY_ORIGINAL_SIZE:
									case o.LEGACY_STRIP_ORIGINAL_SIZE:
										r.container.backgroundSize = "auto", r.container.backgroundRepeat = "no-repeat";
										break;
									case o.SCALE_TO_FIT:
									case o.LEGACY_STRIP_SCALE_TO_FIT:
										r.container.backgroundSize = "contain", r.container.backgroundRepeat = "no-repeat";
										break;
									case o.STRETCH:
										r.container.backgroundSize = "100% 100%", r.container.backgroundRepeat = "no-repeat";
										break;
									case o.SCALE_TO_FILL:
									case o.LEGACY_STRIP_SCALE_TO_FILL:
										r.container.backgroundSize = "cover", r.container.backgroundRepeat = "no-repeat";
										break;
									case o.TILE_HORIZONTAL:
									case o.LEGACY_STRIP_TILE_HORIZONTAL:
										r.container.backgroundSize = "auto", r.container.backgroundRepeat = "repeat-x";
										break;
									case o.TILE_VERTICAL:
									case o.LEGACY_STRIP_TILE_VERTICAL:
										r.container.backgroundSize = "auto", r.container.backgroundRepeat = "repeat-y";
										break;
									case o.TILE:
									case o.LEGACY_STRIP_TILE:
										r.container.backgroundSize = "auto", r.container.backgroundRepeat = "repeat";
										break;
									case o.LEGACY_STRIP_FIT_AND_TILE:
										r.container.backgroundSize = "contain", r.container.backgroundRepeat = "repeat";
										break;
									case o.FIT_AND_TILE:
									case o.LEGACY_BG_FIT_AND_TILE:
										r.container.backgroundSize = "auto", r.container.backgroundRepeat = "repeat";
										break;
									case o.LEGACY_BG_FIT_AND_TILE_HORIZONTAL:
										r.container.backgroundSize = "auto", r.container.backgroundRepeat = "repeat-x";
										break;
									case o.LEGACY_BG_FIT_AND_TILE_VERTICAL:
										r.container.backgroundSize = "auto", r.container.backgroundRepeat = "repeat-y";
										break;
									case o.LEGACY_BG_NORMAL:
										r.container.backgroundSize = "auto", r.container.backgroundRepeat = "no-repeat"
								}
								switch(t.alignment) {
									case n.CENTER:
										r.container.backgroundPosition = "center center";
										break;
									case n.LEFT:
										r.container.backgroundPosition = "left center";
										break;
									case n.RIGHT:
										r.container.backgroundPosition = "right center";
										break;
									case n.TOP:
										r.container.backgroundPosition = "center top";
										break;
									case n.BOTTOM:
										r.container.backgroundPosition = "center bottom";
										break;
									case n.TOP_RIGHT:
										r.container.backgroundPosition = "right top";
										break;
									case n.TOP_LEFT:
										r.container.backgroundPosition = "left top";
										break;
									case n.BOTTOM_RIGHT:
										r.container.backgroundPosition = "right bottom";
										break;
									case n.BOTTOM_LEFT:
										r.container.backgroundPosition = "left bottom"
								}
								return i
							}
						}, function(e, t, i) {
							"use strict";
							var r, n = i(0),
								o = n.alignTypes,
								a = n.fittingTypes,
								s = ((r = {})[o.CENTER] = "center", r[o.TOP] = "top", r[o.TOP_LEFT] = "top left", r[o.TOP_RIGHT] = "top right", r[o.BOTTOM] = "bottom", r[o.BOTTOM_LEFT] = "bottom left", r[o.BOTTOM_RIGHT] = "bottom right", r[o.LEFT] = "left", r[o.RIGHT] = "right", r),
								c = {
									position: "absolute",
									top: "auto",
									right: "auto",
									bottom: "auto",
									left: "auto"
								};
							e.exports = {
								get: function(e, t) {
									var i = {
											css: {
												container: {},
												img: {}
											}
										},
										r = i.css,
										n = e.fittingType,
										u = t.alignment;
									switch(r.container.position = "relative", n) {
										case a.ORIGINAL_SIZE:
										case a.LEGACY_ORIGINAL_SIZE:
											e.parts && e.parts.length ? (r.img.width = e.parts[0].width, r.img.height = e.parts[0].height) : (r.img.width = e.src.width, r.img.height = e.src.height);
											break;
										case a.SCALE_TO_FIT:
										case a.LEGACY_FIT_WIDTH:
										case a.LEGACY_FIT_HEIGHT:
										case a.LEGACY_FULL:
											r.img.width = t.width, r.img.height = t.height, r.img.objectFit = "contain", r.img.objectPosition = s[u] || "unset";
											break;
										case a.LEGACY_BG_NORMAL:
											r.img.width = "100%", r.img.height = "100%", r.img.objectFit = "none", r.img.objectPosition = s[u] || "unset";
											break;
										case a.STRETCH:
											r.img.width = t.width, r.img.height = t.height, r.img.objectFit = "fill";
											break;
										case a.SCALE_TO_FILL:
											r.img.width = t.width, r.img.height = t.height, r.img.objectFit = "cover"
									}
									if("number" == typeof r.img.width && (r.img.width !== t.width || r.img.height !== t.height)) {
										var l = Math.round((t.height - r.img.height) / 2),
											h = Math.round((t.width - r.img.width) / 2);
										Object.assign(r.img, c, function(e, t, i) {
											var r;
											return(r = {})[o.TOP_LEFT] = {
												top: 0,
												left: 0
											}, r[o.TOP_RIGHT] = {
												top: 0,
												right: 0
											}, r[o.TOP] = {
												top: 0,
												left: t
											}, r[o.BOTTOM_LEFT] = {
												top: 0,
												left: 0
											}, r[o.BOTTOM_RIGHT] = {
												bottom: 0,
												right: 0
											}, r[o.BOTTOM] = {
												bottom: 0,
												left: t
											}, r[o.RIGHT] = {
												top: e,
												right: 0
											}, r[o.LEFT] = {
												top: e,
												left: 0
											}, r[o.CENTER] = {
												width: i.width,
												height: i.height,
												objectFit: "none"
											}, r
										}(l, h, t)[u])
									}
									return i
								}
							}
						}, function(e, t, i) {
							"use strict";
							var r = i(0),
								n = r.fittingTypes,
								o = r.alignTypes,
								a = r.transformTypes,
								s = i(1),
								c = s.getDimension,
								u = s.isImageTransformApplicable;
							e.exports = {
								get: function(e, t) {
									var i, r = {
											css: {
												container: {}
											},
											attr: {
												container: {},
												img: {}
											}
										},
										s = r.css,
										l = r.attr,
										h = e.fittingType,
										d = t.alignment,
										f = e.src,
										p = f.width,
										g = f.height;
									switch(s.container.position = "relative", h) {
										case n.ORIGINAL_SIZE:
										case n.LEGACY_ORIGINAL_SIZE:
										case n.TILE:
											e.parts && e.parts.length ? (l.img.width = e.parts[0].width, l.img.height = e.parts[0].height) : (l.img.width = p, l.img.height = g), l.img.preserveAspectRatio = "xMidYMid slice";
											break;
										case n.SCALE_TO_FIT:
										case n.LEGACY_FIT_WIDTH:
										case n.LEGACY_FIT_HEIGHT:
										case n.LEGACY_FULL:
											l.img.width = "100%", l.img.height = "100%", l.img.transform = "", l.img.preserveAspectRatio = "";
											break;
										case n.STRETCH:
											l.img.width = t.width, l.img.height = t.height, l.img.x = 0, l.img.y = 0, l.img.transform = "", l.img.preserveAspectRatio = "none";
											break;
										case n.SCALE_TO_FILL:
											u(e.src.id) ? (l.img.width = t.width, l.img.height = t.height) : (i = c(p, g, t.width, t.height, a.FILL), l.img.width = i.width, l.img.height = i.height), l.img.x = 0, l.img.y = 0, l.img.transform = "", l.img.preserveAspectRatio = "xMidYMid slice"
									}
									if("number" == typeof l.img.width && (l.img.width !== t.width || l.img.height !== t.height)) {
										var m, b, v = 0,
											T = 0;
										h === n.TILE ? (m = t.width % l.img.width, b = t.height % l.img.height) : (m = t.width - l.img.width, b = t.height - l.img.height);
										var _ = Math.round(m / 2),
											y = Math.round(b / 2);
										switch(d) {
											case o.TOP_LEFT:
												v = 0, T = 0;
												break;
											case o.TOP:
												v = _, T = 0;
												break;
											case o.TOP_RIGHT:
												v = m, T = 0;
												break;
											case o.LEFT:
												v = 0, T = y;
												break;
											case o.CENTER:
												v = _, T = y;
												break;
											case o.RIGHT:
												v = m, T = y;
												break;
											case o.BOTTOM_LEFT:
												v = 0, T = b;
												break;
											case o.BOTTOM:
												v = _, T = b;
												break;
											case o.BOTTOM_RIGHT:
												v = m, T = b
										}
										l.img.x = v, l.img.y = T
									}
									return l.container.width = t.width, l.container.height = t.height, l.container.viewBox = [0, 0, t.width, t.height].join(" "), r
								}
							}
						}, function(e, t, i) {
							"use strict";
							var r = i(0),
								n = r.fittingTypes,
								o = r.alignTypes,
								a = r.transformTypes,
								s = i(1),
								c = s.getDimension,
								u = s.isImageTypeSupported,
								l = s.isExternalUrl;
							e.exports = {
								get: function(e, t) {
									var i, r, s, h = {
											css: {
												container: {},
												img: {}
											}
										},
										d = h.css,
										f = e.fittingType,
										p = t.alignment;
									switch(e.parts && e.parts.length ? (i = e.parts[0].width, r = e.parts[0].height) : (i = e.src.width, r = e.src.height), d.img.display = "block", d.container.position = "relative", d.img.position = "absolute", d.img.top = "auto", d.img.right = "auto", d.img.bottom = "auto", d.img.left = "auto", f) {
										case n.ORIGINAL_SIZE:
										case n.LEGACY_ORIGINAL_SIZE:
											d.img.width = i, d.img.height = r;
											break;
										case n.SCALE_TO_FIT:
										case n.LEGACY_FIT_WIDTH:
										case n.LEGACY_FIT_HEIGHT:
										case n.LEGACY_FULL:
											s = c(i, r, t.width, t.height, a.FIT), Object.assign(d.img, s);
											break;
										case n.STRETCH:
											d.img.width = t.width, d.img.height = t.height;
											break;
										case n.SCALE_TO_FILL:
											var g = e.src.id;
											u(g) || l(g) ? (d.img.width = t.width, d.img.height = t.height) : (s = c(i, r, t.width, t.height, a.FILL), Object.assign(d.img, s), d.container.overflow = "hidden")
									}
									if(d.img.width !== t.width || d.img.height !== t.height) {
										var m = Math.round((t.height - d.img.height) / 2),
											b = Math.round((t.width - d.img.width) / 2);
										switch(p) {
											default:
												case o.CENTER:
												d.img.top = m,
											d.img.left = b;
											break;
											case o.LEFT:
													d.img.left = 0,
												d.img.top = m;
												break;
											case o.RIGHT:
													d.img.right = 0,
												d.img.top = m;
												break;
											case o.TOP:
													d.img.left = b,
												d.img.top = 0;
												break;
											case o.BOTTOM:
													d.img.left = b,
												d.img.bottom = 0;
												break;
											case o.TOP_RIGHT:
													d.img.right = 0,
												d.img.top = 0;
												break;
											case o.TOP_LEFT:
													d.img.left = 0,
												d.img.top = 0;
												break;
											case o.BOTTOM_RIGHT:
													d.img.right = 0,
												d.img.bottom = 0;
												break;
											case o.BOTTOM_LEFT:
													d.img.left = 0,
												d.img.bottom = 0
										}
									}
									return h
								}
							}
						}, function(e, t, i) {
							"use strict";
							var r, n = i(0),
								o = n.alignTypes,
								a = n.fittingTypes,
								s = ((r = {})[o.CENTER] = "50% 50%", r[o.TOP_LEFT] = "0% 0%", r[o.TOP_RIGHT] = "100% 0%", r[o.TOP] = "50% 0%", r[o.BOTTOM_LEFT] = "0% 100%", r[o.BOTTOM_RIGHT] = "100% 100%", r[o.BOTTOM] = "50% 100%", r[o.RIGHT] = "100% 50%", r[o.LEFT] = "0% 50%", r),
								c = Object.entries(s).reduce((function(e, t) {
									var i = t[0];
									return e[t[1]] = i, e
								}), {}),
								u = [a.TILE, a.TILE_HORIZONTAL, a.TILE_VERTICAL, a.LEGACY_BG_FIT_AND_TILE, a.LEGACY_BG_FIT_AND_TILE_HORIZONTAL, a.LEGACY_BG_FIT_AND_TILE_VERTICAL],
								l = [a.LEGACY_ORIGINAL_SIZE, a.ORIGINAL_SIZE, a.LEGACY_BG_NORMAL];

							function h(e, t, i) {
								var r = i.width,
									n = i.height;
								return e === a.TILE && t.width > r && t.height > n
							}

							function d(e, t, i) {
								var r = e.width,
									n = e.height,
									o = t.width,
									a = t.height,
									s = i.x,
									c = i.y;
								if(!o || !a) return s + "% " + c + "%";
								var u = Math.max(o / r, a / n),
									l = r * u,
									h = n * u,
									d = Math.max(0, Math.min(l - o, l * (s / 100) - o / 2)),
									f = Math.max(0, Math.min(h - a, h * (c / 100) - a / 2));
								return(d && Math.floor(d / (l - o) * 100)) + "% " + (f && Math.floor(f / (h - a) * 100)) + "%"
							}
							e.exports.validateTargetDimensions = function(e, t) {
								var i = t.width,
									r = t.height;
								if(!i || !r) {
									var n = i || Math.min(980, e.width),
										o = n / e.width;
									return {
										width: n,
										height: r || e.height * o
									}
								}
								return {
									width: i,
									height: r
								}
							}, e.exports.getScaledDimensions = function(e, t, i, r) {
								var n = i.width,
									o = i.height;
								if(void 0 === r && (r = !1), r) return {
									width: n,
									height: o
								};
								var a = !l.includes(e),
									s = h(e, t, {
										width: n,
										height: o
									}),
									c = !s && u.includes(e),
									d = c ? t.width : n,
									f = c ? t.height : o,
									p = a ? function(e) {
										return e > 900 ? .25 : e > 500 ? .3 : e > 200 ? .4 : 1
									}(d) : 1;
								return {
									width: s ? 1920 : d * p,
									height: f * p
								}
							}, e.exports.getConvertedFitting = function(e, t) {
								var i = u.includes(e) && !t;
								return e === a.SCALE_TO_FILL || i ? a.SCALE_TO_FIT : e
							}, e.exports.getIsFakeTile = h, e.exports.getBlurValue = function(e, t, i) {
								return i ? 0 : u.includes(t) ? 1 : e > 200 ? 2 : 3
							}, e.exports.getCSSOverrides = function(e, t, i, r) {
								void 0 === r && (r = "center");
								var n, o, l = {
									img: {},
									container: {}
								};
								if(e === a.SCALE_TO_FILL) {
									var h = t.focalPoint && (o = (n = t.focalPoint).x + "% " + n.y + "%", c[o] || ""),
										f = h || r;
									t.focalPoint && !h ? l.img = {
										objectPosition: d(t, i, t.focalPoint)
									} : l.img = {
										objectPosition: s[f]
									}
								} else [a.LEGACY_ORIGINAL_SIZE, a.ORIGINAL_SIZE].includes(e) ? l.img = {
									objectFit: "none",
									top: "auto",
									left: "auto",
									right: "auto",
									bottom: "auto"
								} : u.includes(e) && (l.container = {
									backgroundSize: t.width + "px " + t.height + "px"
								});
								return l
							}
						}])
					},
					50343: function() {
						! function() {
							if(void 0 !== window.Reflect && void 0 !== window.customElements && !window.customElements.hasOwnProperty("polyfillWrapFlushCallback")) {
								var e = HTMLElement;
								window.HTMLElement = function() {
									return Reflect.construct(e, [], this.constructor)
								}, HTMLElement.prototype = e.prototype, HTMLElement.prototype.constructor = HTMLElement, Object.setPrototypeOf(HTMLElement, e)
							}
						}()
					},
					58699: function(e) {
						"use strict";
						var t = function(e) {
								return e * Math.PI / 180
							},
							i = function(e, t) {
								return {
									width: e,
									height: t
								}
							},
							r = function(e, t, i) {
								return {
									width: e,
									height: Math.max(t, i)
								}
							};
						e.exports = {
							BackgroundParallax: {
								hasParallax: !0,
								getMediaDimensions: r
							},
							BackgroundParallaxZoom: {
								hasParallax: !0,
								getMediaDimensions: r
							},
							BackgroundReveal: {
								hasParallax: !0,
								getMediaDimensions: r
							},
							BgCloseUp: {
								getMediaDimensions: i
							},
							BgExpand: {
								getMediaDimensions: i
							},
							BgFabeBack: {
								getMediaDimensions: i
							},
							BgFadeIn: {
								getMediaDimensions: i
							},
							BgFadeOut: {
								getMediaDimensions: i
							},
							BgFake3D: {
								hasParallax: !0,
								getMediaDimensions: r
							},
							BgPanLeft: {
								getMediaDimensions: function(e, t) {
									return {
										width: 1.2 * e,
										height: t
									}
								}
							},
							BgPanRight: {
								getMediaDimensions: function(e, t) {
									return {
										width: 1.2 * e,
										height: t
									}
								}
							},
							BgParallax: {
								hasParallax: !0,
								getMediaDimensions: r
							},
							BgPullBack: {
								getMediaDimensions: i
							},
							BgReveal: {
								hasParallax: !0,
								getMediaDimensions: r
							},
							BgRotate: {
								getMediaDimensions: function(e, i) {
									return function(e, i, r) {
										var n = t(r),
											o = Math.hypot(e, i) / 2,
											a = Math.acos(e / 2 / o),
											s = e * Math.abs(Math.cos(n)) + i * Math.abs(Math.sin(n)),
											c = e * Math.abs(Math.sin(n)) + i * Math.abs(Math.cos(n));
										return {
											width: Math.ceil(n < a ? s : 2 * o),
											height: Math.ceil(n < t(90) - a ? c : 2 * o)
										}
									}(e, i, 22)
								}
							},
							BgShrink: {
								getMediaDimensions: i
							},
							BgSkew: {
								getMediaDimensions: function(e, i) {
									return function(e, i, r) {
										var n = t(r);
										return {
											width: e,
											height: e * Math.tan(n) + i
										}
									}(e, i, 20)
								}
							},
							BgUnwind: {
								getMediaDimensions: i
							},
							BgZoomIn: {
								hasParallax: !0,
								getMediaDimensions: r
							},
							BgZoomOut: {
								getMediaDimensions: function(e, t) {
									return {
										width: 1.15 * e,
										height: 1.15 * t
									}
								}
							}
						}
					},
					17948: function(e, t, i) {
						"use strict";
						var r = i(31191),
							n = i(96114),
							o = i.n(n),
							a = i(76702),
							s = i(21405),
							c = i(58699),
							u = i.n(c),
							l = i(46436),
							h = i.n(l),
							d = function(e, t, i) {
								var r = (Array.isArray(t) ? t : t.split(".")).reduce((function(e, t) {
									return e && void 0 !== e[t] ? e[t] : null
								}), e);
								return null !== r ? r : i
							},
							f = function(e, t) {
								return(Array.isArray(t) ? t : [t]).reduce((function(t, i) {
									var r, n = d(e, i);
									return void 0 !== n ? Object.assign(t, ((r = {})[i] = n, r)) : t
								}), {})
							};

						function p() {
							for(var e = arguments.length, t = new Array(e), i = 0; i < e; i++) t[i] = arguments[i];
							for(var r = t[0], n = 1; n < t.length; ++n) r = r.replace(/\/$/, "") + "/" + t[n].replace(/^\//, "");
							return r
						}
						var g = function(e, t, i) {
								if(!e.containerWidth || !e.containerHeight || !e.imageData.uri) return {
									uri: "",
									css: {}
								};
								var r = e.imageData,
									n = e.displayMode || h().fittingTypes.SCALE_TO_FILL,
									o = Object.assign(f(r, "upscaleMethod"), f(e, "filters"), e.quality || r.quality),
									a = d(e.imageData, "devicePixelRatio", t.devicePixelRatio),
									s = b(a),
									c = Object.assign(f(r, ["width", "height", "crop", "name", "focalPoint"]), {
										id: r.uri
									}),
									u = {
										width: e.containerWidth,
										height: e.containerHeight,
										htmlTag: i || "img",
										pixelAspectRatio: s,
										alignment: e.alignType || h().alignTypes.CENTER
									},
									l = h().getData(n, c, u, o);
								return l.uri = m(l.uri, t.staticMediaUrl, t.mediaRootUrl), l
							},
							m = function(e, t, i) {
								if(/(^https?)|(^data)|(^blob)|(^\/\/)/.test(e)) return e;
								var r = t + "/";
								return e && (/^micons\//.test(e) ? r = i : "ico" === /[^.]+$/.exec(e)[0] && (r = r.replace("media", "ficons"))), r + e
							},
							b = function(e) {
								var t = window.location.search.split("&").map((function(e) {
									return e.split("=")
								})).find((function(e) {
									return e[0].toLowerCase().includes("devicepixelratio")
								}));
								return(t ? Number(t[1]) : null) || e || 1
							},
							v = function(e, t) {
								return e.getAttribute(t ? "xlink:href" : "src")
							};
						var T = {
								columnCount: 1,
								columns: 1,
								fontWeight: 1,
								lineHeight: 1,
								opacity: 1,
								zIndex: 1,
								zoom: 1
							},
							_ = function(e, t) {
								return e && t && Object.keys(t).forEach((function(i) {
									return e.setAttribute(i, t[i])
								}))
							},
							y = function(e, t) {
								return e && t && Object.keys(t).forEach((function(i) {
									var r = t[i];
									void 0 !== r ? e.style[i] = function(e, t) {
										return "number" != typeof t || T[e] ? t : t + "px"
									}(i, r) : e.style.removeProperty(i)
								}))
							},
							I = function(e, t) {
								return e && t && Object.keys(t).forEach((function(i) {
									e.style.setProperty(i, t[i])
								}))
							},
							E = function(e, t, i) {
								return void 0 === i && (i = !0), e && i ? (r = e.dataset[t]) ? "true" === r || "false" !== r && ("null" === r ? null : "" + +r === r ? +r : r) : r : e.dataset[t];
								var r
							},
							A = function(e, t) {
								return e && t && Object.assign(e.dataset, t)
							},
							w = function() {
								return window ? window.innerHeight || document.documentElement.clientHeight : 0
							},
							O = {
								fit: "contain",
								fill: "cover"
							};
						var S = {
							measure: function(e, t, i, r, n) {
								var o = r.containerId,
									a = r.bgEffectName,
									s = i[e],
									c = i[o],
									u = n.getMediaDimensionsByEffect(a, c.offsetWidth, c.offsetHeight, w()),
									l = u.width,
									h = u.height;
								t.width = l, t.height = h, t.currentSrc = s.style.backgroundImage, t.bgEffectName = s.dataset.bgEffectName
							},
							patch: function(e, t, i, r, n) {
								var o = i[e];
								r.containerWidth = t.width, r.containerHeight = t.height;
								var a, s, c = g(r, n, "bg");
								a = t.currentSrc, s = c.uri, void 0 === a && (a = ""), a.includes(s) && !!a == !!s ? y(o, c.css.container) : function(e, t) {
									var i = Object.assign({
											backgroundImage: 'url("' + t.uri + '")'
										}, t.css.container),
										r = new Image;
									r.onload = y.bind(null, e, i), r.src = t.uri
								}(o, c)
							}
						};

						function L(e, t) {
							for(var i = 0; i < t.length; i++) {
								var r = t[i];
								r.enumerable = r.enumerable || !1, r.configurable = !0, "value" in r && (r.writable = !0), Object.defineProperty(e, r.key, r)
							}
						}

						function R(e, t) {
							return(R = Object.setPrototypeOf || function(e, t) {
								return e.__proto__ = t, e
							})(e, t)
						}
						var M = function(e, t, i) {
							return function(e) {
								var r, n;

								function o() {
									return e.call(this) || this
								}
								n = e, (r = o).prototype = Object.create(n.prototype), r.prototype.constructor = r, R(r, n);
								var a, s, c, u = o.prototype;
								return u.reLayout = function() {
									if(!t.isExperimentOpen("specs.thunderbolt.tb_stop_client_images")) {
										var e = {},
											r = {},
											n = this.getAttribute("id"),
											o = JSON.parse(this.dataset.tiledImageInfo),
											a = this.dataset.bgEffectName,
											s = o.containerId,
											c = document.getElementById(s);
										e[n] = this, e[s] = c, o.displayMode = o.imageData.displayMode, t.mutationService.measure((function() {
											S.measure(n, r, e, {
												containerId: s,
												bgEffectName: a
											}, t)
										})), t.mutationService.mutate((function() {
											S.patch(n, r, e, o, i)
										}))
									}
								}, u.attributeChangedCallback = function(e, t) {
									t && this.reLayout()
								}, u.disconnectedCallback = function() {
									e.prototype.disconnectedCallback.call(this)
								}, a = o, c = [{
									key: "observedAttributes",
									get: function() {
										return ["data-tiled-image-info"]
									}
								}], (s = null) && L(a.prototype, s), c && L(a, c), o
							}(e)
						};

						function x(e, t) {
							for(var i = 0; i < t.length; i++) {
								var r = t[i];
								r.enumerable = r.enumerable || !1, r.configurable = !0, "value" in r && (r.writable = !0), Object.defineProperty(e, r.key, r)
							}
						}

						function P(e, t) {
							return(P = Object.setPrototypeOf || function(e, t) {
								return e.__proto__ = t, e
							})(e, t)
						}
						var C = function(e, t) {
								var i = {
									width: void 0,
									height: void 0,
									left: void 0
								};
								return function(e) {
									var r, n;

									function o() {
										return e.call(this) || this
									}
									n = e, (r = o).prototype = Object.create(n.prototype), r.prototype.constructor = r, P(r, n);
									var a, s, c, u = o.prototype;
									return u.reLayout = function() {
										var e = this,
											r = this.dataset,
											n = r.containerId,
											o = r.pageId,
											a = r.useCssVars,
											s = r.bgEffectName,
											c = document.getElementById("" + n),
											u = document.getElementById("" + o),
											l = {};
										t.mutationService.measure((function() {
											var i = "fixed" === window.getComputedStyle(e).position,
												r = document.documentElement.clientHeight,
												n = c.getBoundingClientRect(),
												o = u.getBoundingClientRect(),
												h = t.getMediaDimensionsByEffect(s, n.width, n.height, r),
												d = h.hasParallax,
												f = h.width,
												p = h.height,
												g = f + "px",
												m = p + "px",
												b = i ? n.left - o.left + "px" : (n.width - f) / 2 + "px",
												v = i || d ? 0 : (n.height - p) / 2 + "px",
												T = a ? {
													"--containerW": g,
													"--containerH": m,
													"--containerL": b,
													"--screenH_val": "" + r
												} : {
													width: g,
													height: m,
													left: b,
													top: v
												};
											Object.assign(l, T)
										})), t.mutationService.mutate((function() {
											a ? (y(e, i), I(e, l)) : y(e, l)
										}))
									}, u.connectedCallback = function() {
										e.prototype.connectedCallback.call(this), t.windowResizeService.observe(this)
									}, u.disconnectedCallback = function() {
										e.prototype.disconnectedCallback.call(this), t.windowResizeService.unobserve(this)
									}, u.attributeChangedCallback = function(e, t) {
										t && this.reLayout()
									}, a = o, c = [{
										key: "observedAttributes",
										get: function() {
											return ["data-is-full-height", "data-container-size"]
										}
									}], (s = null) && x(a.prototype, s), c && x(a, c), o
								}(e)
							},
							F = "__more__",
							G = "moreContainer",
							B = function(e, t, i, r, n, o, a, s) {
								if(e -= n * (a ? r.length : r.length - 1), e -= s.left + s.right, t && (r = r.map((function() {
										return o
									}))), r.some((function(e) {
										return 0 === e
									}))) return null;
								var c = 0,
									u = r.reduce((function(e, t) {
										return e + t
									}), 0);
								if(u > e) return null;
								if(t) {
									if(i) {
										var l = Math.floor(e / r.length),
											h = r.map((function() {
												return l
											}));
										if((c = l * r.length) < e) {
											var d = Math.floor(e - c);
											r.forEach((function(e, t) {
												t <= d - 1 && h[t]++
											}))
										}
										return h
									}
									return r
								}
								if(i) {
									var f = Math.floor((e - u) / r.length);
									c = 0;
									var p = r.map((function(e) {
										return c += e + f, e + f
									}));
									if(c < e) {
										var g = Math.floor(e - c);
										r.forEach((function(e, t) {
											t <= g - 1 && p[t]++
										}))
									}
									return p
								}
								return r
							},
							k = function(e) {
								var t = parseFloat(e);
								return isFinite(t) ? t : 0
							},
							N = function(e) {
								return e.getBoundingClientRect().top > window.innerHeight / 2
							},
							D = function(e, t, i, r) {
								var n = t.width,
									o = t.height,
									a = t.alignButtons,
									s = t.hoverListPosition,
									c = t.menuItemContainerExtraPixels,
									u = t.absoluteLeft,
									l = function(e, t, i, r, n, o, a, s, c) {
										var u = "0px",
											l = "auto",
											h = o.left,
											d = o.width;
										return "left" === t ? u = "left" === n ? 0 : h + e.left + "px" : "right" === t ? (l = "right" === n ? 0 : r - h - d - e.right + "px", u = "auto") : "left" === n ? u = h + (d + e.left - i) / 2 + "px" : "right" === n ? (u = "auto", l = (d + e.right - (i + e.width)) / 2 + "px") : u = e.left + h + (d - (i + e.width)) / 2 + "px", "auto" !== u && (u = a + parseInt(u, 10) < 0 ? 0 : u), "auto" !== l && (l = s - parseInt(l, 10) > c ? 0 : l), {
											moreContainerLeft: u,
											moreContainerRight: l
										}
									}(c, a, r, n, s, i, u, u + n, t.bodyClientWidth);
								return {
									left: l.moreContainerLeft,
									right: l.moreContainerRight,
									top: t.needToOpenMenuUp ? "auto" : o + "px",
									bottom: t.needToOpenMenuUp ? o + "px" : "auto"
								}
							},
							H = function(e) {
								return !isNaN(parseFloat(e)) && isFinite(e)
							},
							j = function(e) {
								var t = {},
									i = {};
								i[e] = document.getElementById("" + e);
								var r, n, o = (r = i[e], (n = +E(r, "numItems")) <= 0 || n > Number.MAX_SAFE_INTEGER ? [] : new Array(n).fill(0).map((function(e, t) {
										return String(t)
									}))),
									a = function(e) {
										return ["moreContainer", "itemsContainer", "dropWrapper"].concat(e, [F])
									}(o);
								a.forEach((function(t) {
									var r = "" + e + t;
									i[r] = document.getElementById("" + r)
								})), t.children = function(e, t, i, r) {
									var n = {};
									return r.forEach((function(t) {
										var r = "" + e + t,
											o = i[r];
										o && (n[r] = {
											width: o.offsetWidth,
											boundingClientRectWidth: o.getBoundingClientRect().width,
											height: o.offsetHeight
										})
									})), n
								}(e, 0, i, a);
								var s = i[e],
									c = i[e + "itemsContainer"],
									u = c.childNodes,
									l = i[e + "moreContainer"],
									h = l.childNodes,
									d = E(s, "stretchButtonsToMenuWidth"),
									f = E(s, "sameWidthButtons"),
									p = s.getBoundingClientRect();
								t.absoluteLeft = p.left, t.bodyClientWidth = document.body.clientWidth, t.alignButtons = E(s, "dropalign"), t.hoverListPosition = E(s, "drophposition"), t.menuBorderY = parseInt(E(s, "menuborderY"), 10), t.ribbonExtra = parseInt(E(s, "ribbonExtra"), 10), t.ribbonEls = parseInt(E(s, "ribbonEls"), 10), t.labelPad = parseInt(E(s, "labelPad"), 10), t.menuButtonBorder = parseInt(E(s, "menubtnBorder"), 10), t.menuItemContainerMargins = function(e) {
									var t = e.lastChild,
										i = window.getComputedStyle(t);
									return(parseInt(i.marginLeft, 10) || 0) + (parseInt(i.marginRight, 10) || 0)
								}(c), t.menuItemContainerExtraPixels = function(e, t) {
									var i = window.getComputedStyle(e),
										r = k(i.borderTopWidth) + k(i.paddingTop),
										n = k(i.borderBottomWidth) + k(i.paddingBottom),
										o = k(i.borderLeftWidth) + k(i.paddingLeft),
										a = k(i.borderRightWidth) + k(i.paddingRight);
									return t && (r += k(i.marginTop), n += k(i.marginBottom), o += k(i.marginLeft), a += k(i.marginRight)), {
										top: r,
										bottom: n,
										left: o,
										right: a,
										height: r + n,
										width: o + a
									}
								}(c, !0), t.needToOpenMenuUp = N(s), t.menuItemMarginForAllChildren = !d || "false" !== c.getAttribute("data-marginAllChildren"), t.moreSubItem = [], t.labelWidths = {}, t.linkIds = {}, t.parentId = {}, t.menuItems = {}, t.labels = {}, h.forEach((function(e, r) {
									t.parentId[e.id] = E(e, "parentId");
									var n = E(e, "dataId");
									t.menuItems[n] = {
										dataId: n,
										parentId: E(e, "parentId"),
										moreDOMid: e.id,
										moreIndex: r
									}, i[e.id] = e;
									var o = e.querySelector("p");
									i[o.id] = o, t.labels[o.id] = {
										width: o.offsetWidth,
										height: o.offsetHeight,
										left: o.offsetLeft,
										lineHeight: parseInt(window.getComputedStyle(o).fontSize, 10)
									}, t.moreSubItem.push(e.id)
								})), u.forEach((function(e, r) {
									var n = E(e, "dataId");
									t.menuItems[n] = t.menuItems[n] || {}, t.menuItems[n].menuIndex = r, t.menuItems[n].menuDOMid = e.id, t.children[e.id].left = e.offsetLeft;
									var o = e.querySelector("p");
									i[o.id] = o, t.labelWidths[o.id] = function(e) {
										return e.getBoundingClientRect().width
									}(o);
									var a = e.querySelector("p");
									i[a.id] = a, t.linkIds[e.id] = a.id
								}));
								var g = s.offsetHeight;
								t.height = g, t.width = s.offsetWidth, t.lineHeight = function(e, t) {
									return e - t.menuBorderY - t.labelPad - t.ribbonEls - t.menuButtonBorder - t.ribbonExtra + "px"
								}(g, t);
								var m = function(e, t, i, r, n) {
									var o = t.width;
									t.hasOriginalGapData = {}, t.originalGapBetweenTextAndBtn = {};
									var a = n.map((function(i) {
											var n, o = r[e + i],
												a = E(o, "originalGapBetweenTextAndBtn");
											return void 0 === a ? (t.hasOriginalGapData[i] = !1, n = t.children[e + i].boundingClientRectWidth - t.labelWidths[e + i + "label"], t.originalGapBetweenTextAndBtn[e + i] = n) : (t.hasOriginalGapData[i] = !0, n = parseFloat(a)), t.children[e + i].width > 0 ? Math.floor(t.labelWidths[e + i + "label"] + n) : 0
										})),
										s = a.pop(),
										c = i.sameWidthButtons,
										u = i.stretchButtonsToMenuWidth,
										l = !1,
										h = t.menuItemContainerMargins,
										d = t.menuItemMarginForAllChildren,
										f = t.menuItemContainerExtraPixels,
										p = function(e) {
											return e.reduce((function(e, t) {
												return e > t ? e : t
											}), -1 / 0)
										}(a),
										g = B(o, c, u, a, h, p, d, f);
									if(!g) {
										for(var m = 1; m <= a.length; m++)
											if(g = B(o, c, u, a.slice(0, -1 * m).concat(s), h, p, d, f)) {
												l = !0;
												break
											}
										g || (l = !0, g = [s])
									}
									if(l) {
										var b = g[g.length - 1];
										for(g = g.slice(0, -1); g.length < n.length;) g.push(0);
										g[g.length - 1] = b
									}
									return {
										realWidths: g,
										moreShown: l
									}
								}(e, t, {
									sameWidthButtons: f,
									stretchButtonsToMenuWidth: d
								}, i, o.concat(F));
								return t.realWidths = m.realWidths, t.isMoreShown = m.moreShown, t.menuItemIds = o, t.hoverState = E(l, "hover", !1), {
									measures: t,
									domNodes: i
								}
							},
							U = function(e, t, i) {
								y(i[e], {
									overflowX: "visible"
								});
								var r, n = t.menuItemIds,
									o = t.needToOpenMenuUp,
									a = n.concat(F);
								r = i[e], A(r, {
									dropmode: o ? "dropUp" : "dropDown"
								});
								var s, c, u = 0;
								if(t.hoverState === F) {
									var l = t.realWidths.indexOf(0),
										h = t.menuItems[(s = t.menuItems, c = function(e) {
											return e.menuIndex === l
										}, Object.keys(s).find((function(e) {
											return c(s[e], e)
										})))],
										d = h.moreIndex,
										f = d === n.length - 1;
									h.moreDOMid && _(i[h.moreDOMid], {
										"data-listposition": f ? "dropLonely" : "top"
									}), Object.values(t.menuItems).filter((function(e) {
										return !!e.moreDOMid
									})).forEach((function(e) {
										if(e.moreIndex < d) y(i[e.moreDOMid], {
											display: "none"
										});
										else {
											var r = e.moreDOMid + "label";
											u = Math.max(t.labels[r].width, u)
										}
									}))
								} else t.hoverState && t.moreSubItem.forEach((function(i, r) {
									var n = e + G + r + "label";
									u = Math.max(t.labels[n].width, u)
								}));
								! function(e, t, i, r) {
									var n = t.hoverState;
									if("-1" !== n) {
										var o = t.menuItemIds.indexOf(n);
										if(H(t.hoverState) || n === F) {
											if(!t.realWidths) return;
											var a = Math.max(r, t.children[-1 !== o ? e + o : e + F].width),
												s = function(e, t) {
													return e + 15 + t.menuBorderY + t.labelPad + t.menuButtonBorder
												}(0 !== t.moreSubItem.length ? t.labels[t.moreSubItem[0] + "label"].lineHeight : 0, t);
											t.moreSubItem.forEach((function(e) {
												y(i[e], {
													minWidth: a + "px"
												}), y(i[e + "label"], {
													minWidth: "0px",
													lineHeight: s + "px"
												})
											}));
											var c = H(t.hoverState) ? t.hoverState : "__more__",
												u = {
													width: t.children[e + c].width,
													left: t.children[e + c].left
												},
												l = D(0, t, u, a);
											y(i["" + e + G], {
												left: l.left,
												right: l.right
											}), y(i[e + "dropWrapper"], {
												left: l.left,
												right: l.right,
												top: l.top,
												bottom: l.bottom
											})
										}
									}
								}(e, t, i, u), t.originalGapBetweenTextAndBtn && a.forEach((function(r) {
										t.hasOriginalGapData[r] || A(i["" + e + r], {
											originalGapBetweenTextAndBtn: t.originalGapBetweenTextAndBtn["" + e + r]
										})
									})),
									function(e, t, i, r) {
										for(var n = i.realWidths, o = i.height, a = i.menuItemContainerExtraPixels, s = 0, c = null, u = null, l = i.lineHeight, h = o - a.height, d = 0; d < r.length; d++) {
											var f = n[d],
												p = f > 0,
												g = e + r[d];
											u = i.linkIds[g], p ? (s++, c = g, y(t[g], {
												width: f + "px",
												height: h + "px",
												position: "relative",
												"box-sizing": "border-box",
												overflow: "visible",
												visibility: "inherit"
											}), y(t[g + "label"], {
												"line-height": l
											}), _(t[g], {
												"aria-hidden": !1
											})) : (y(t[g], {
												height: "0px",
												overflow: "hidden",
												position: "absolute",
												visibility: "hidden"
											}), _(t[g], {
												"aria-hidden": !0
											}), _(t[u], {
												tabIndex: -1
											}))
										}
										1 === s && (A(t[e + "moreContainer"], {
											listposition: "lonely"
										}), A(t[c], {
											listposition: "lonely"
										}))
									}(e, i, t, a)
							};

						function W(e, t) {
							for(var i = 0; i < t.length; i++) {
								var r = t[i];
								r.enumerable = r.enumerable || !1, r.configurable = !0, "value" in r && (r.writable = !0), Object.defineProperty(e, r.key, r)
							}
						}

						function Y(e) {
							if(void 0 === e) throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
							return e
						}

						function V(e, t) {
							return(V = Object.setPrototypeOf || function(e, t) {
								return e.__proto__ = t, e
							})(e, t)
						}

						function z(e, t, i) {
							return t in e ? Object.defineProperty(e, t, {
								value: i,
								enumerable: !0,
								configurable: !0,
								writable: !0
							}) : e[t] = i, e
						}
						var q = function(e, t) {
							return function(e) {
								var i, r;

								function n() {
									for(var t, i = arguments.length, r = new Array(i), n = 0; n < i; n++) r[n] = arguments[n];
									return z(Y(t = e.call.apply(e, [this].concat(r)) || this), "_visible", !1), z(Y(t), "_mutationIds", {
										read: null,
										write: null
									}), z(Y(t), "_itemsContainer", null), z(Y(t), "_dropContainer", null), z(Y(t), "_labelItems", []), t
								}
								r = e, (i = n).prototype = Object.create(r.prototype), i.prototype.constructor = i, V(i, r);
								var o, a, s, c = n.prototype;
								return c.attributeChangedCallback = function() {
									this._isVisible() && this.reLayout()
								}, c.connectedCallback = function() {
									var t = this;
									this._id = this.getAttribute("id"), this._hideElement(), this._waitForDomLoad().then((function() {
										e.prototype.observeResize.call(t), t._observeChildrenResize(), t.reLayout()
									}))
								}, c.disconnectedCallback = function() {
									t.mutationService.clear(this._mutationIds.read), t.mutationService.clear(this._mutationIds.write), e.prototype.disconnectedCallback.call(this)
								}, c._waitForDomLoad = function() {
									var e, t = this,
										i = new Promise((function(t) {
											e = t
										}));
									return this._isDomReady() ? e() : (this._waitForDomReadyObserver = new MutationObserver((function() {
										return t._onRootMutate(e)
									})), this._waitForDomReadyObserver.observe(this, {
										childList: !0,
										subtree: !0
									})), i
								}, c._isDomReady = function() {
									return this._itemsContainer = document.getElementById(this._id + "itemsContainer"), this._dropContainer = document.getElementById(this._id + "dropWrapper"), this._itemsContainer && this._dropContainer
								}, c._onRootMutate = function(e) {
									this._isDomReady() && (this._waitForDomReadyObserver.disconnect(), e())
								}, c._observeChildrenResize = function() {
									var t = this,
										i = Array.from(this._itemsContainer.childNodes);
									this._labelItems = i.map((function(e) {
										return document.getElementById(e.getAttribute("id") + "label")
									})), this._labelItems.forEach((function(i) {
										return e.prototype.observeChildResize.call(t, i)
									}))
								}, c._setVisibility = function(e) {
									this._visible = e, this.style.visibility = e ? "inherit" : "hidden"
								}, c._isVisible = function() {
									return this._visible
								}, c._hideElement = function() {
									this._setVisibility(!1)
								}, c._showElement = function() {
									this._setVisibility(!0)
								}, c.reLayout = function() {
									var e, i, r = this;
									t.mutationService.clear(this._mutationIds.read), t.mutationService.clear(this._mutationIds.write), this._mutationIds.read = t.mutationService.measure((function() {
										var t = j(r._id);
										e = t.measures, i = t.domNodes
									})), this._mutationIds.write = t.mutationService.mutate((function() {
										U(r._id, e, i), r._showElement()
									}))
								}, o = n, s = [{
									key: "observedAttributes",
									get: function() {
										return ["data-hovered-item"]
									}
								}], (a = null) && W(o.prototype, a), s && W(o, s), n
							}(e)
						};

						function $(e, t) {
							var i = "undefined" != typeof Symbol && e[Symbol.iterator] || e["@@iterator"];
							if(i) return(i = i.call(e)).next.bind(i);
							if(Array.isArray(e) || (i = function(e, t) {
									if(!e) return;
									if("string" == typeof e) return Z(e, t);
									var i = Object.prototype.toString.call(e).slice(8, -1);
									"Object" === i && e.constructor && (i = e.constructor.name);
									if("Map" === i || "Set" === i) return Array.from(e);
									if("Arguments" === i || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(i)) return Z(e, t)
								}(e)) || t && e && "number" == typeof e.length) {
								i && (e = i);
								var r = 0;
								return function() {
									return r >= e.length ? {
										done: !0
									} : {
										done: !1,
										value: e[r++]
									}
								}
							}
							throw new TypeError("Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")
						}

						function Z(e, t) {
							(null == t || t > e.length) && (t = e.length);
							for(var i = 0, r = new Array(t); i < t; i++) r[i] = e[i];
							return r
						}

						function J(e) {
							var t = "function" == typeof Map ? new Map : void 0;
							return(J = function(e) {
								if(null === e || (i = e, -1 === Function.toString.call(i).indexOf("[native code]"))) return e;
								var i;
								if("function" != typeof e) throw new TypeError("Super expression must either be null or a function");
								if(void 0 !== t) {
									if(t.has(e)) return t.get(e);
									t.set(e, r)
								}

								function r() {
									return Q(e, arguments, ee(this).constructor)
								}
								return r.prototype = Object.create(e.prototype, {
									constructor: {
										value: r,
										enumerable: !1,
										writable: !0,
										configurable: !0
									}
								}), K(r, e)
							})(e)
						}

						function Q(e, t, i) {
							return(Q = X() ? Reflect.construct : function(e, t, i) {
								var r = [null];
								r.push.apply(r, t);
								var n = new(Function.bind.apply(e, r));
								return i && K(n, i.prototype), n
							}).apply(null, arguments)
						}

						function X() {
							if("undefined" == typeof Reflect || !Reflect.construct) return !1;
							if(Reflect.construct.sham) return !1;
							if("function" == typeof Proxy) return !0;
							try {
								return Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], (function() {}))), !0
							} catch(e) {
								return !1
							}
						}

						function K(e, t) {
							return(K = Object.setPrototypeOf || function(e, t) {
								return e.__proto__ = t, e
							})(e, t)
						}

						function ee(e) {
							return(ee = Object.setPrototypeOf ? Object.getPrototypeOf : function(e) {
								return e.__proto__ || Object.getPrototypeOf(e)
							})(e)
						}
						var te = function(e) {
								return function(t) {
									var i, r;

									function n() {
										return t.call(this) || this
									}
									r = t, (i = n).prototype = Object.create(r.prototype), i.prototype.constructor = i, K(i, r);
									var o = n.prototype;
									return o.reLayout = function() {}, o.connectedCallback = function() {
										this.observeResize(), this.reLayout()
									}, o.disconnectedCallback = function() {
										this.unobserveResize(), this.unobserveChildren()
									}, o.observeResize = function() {
										e.resizeService.observe(this)
									}, o.unobserveResize = function() {
										e.resizeService.unobserve(this)
									}, o.observeChildren = function(e) {
										var t = this;
										this.childListObserver || (this.childListObserver = new MutationObserver((function() {
											return t.reLayout()
										}))), this.childListObserver.observe(e, {
											childList: !0
										})
									}, o.observeChildAttributes = function(e, t) {
										var i = this;
										void 0 === t && (t = []), this.childrenAttributesObservers || (this.childrenAttributesObservers = []);
										var r = new MutationObserver((function() {
											return i.reLayout()
										}));
										r.observe(e, {
											attributeFilter: t
										}), this.childrenAttributesObservers.push(r)
									}, o.observeChildResize = function(t) {
										this.childrenResizeObservers || (this.childrenResizeObservers = []), e.resizeService.observeChild(t, this), this.childrenResizeObservers.push(t)
									}, o.unobserveChildrenResize = function() {
										this.childrenResizeObservers && (this.childrenResizeObservers.forEach((function(t) {
											e.resizeService.unobserveChild(t)
										})), this.childrenResizeObservers = null)
									}, o.unobserveChildren = function() {
										if(this.childListObserver && (this.childListObserver.disconnect(), this.childListObserver = null), this.childrenAttributesObservers) {
											for(var e, t = $(this.childrenAttributesObservers); !(e = t()).done;) {
												var i = e.value;
												i.disconnect(), i = null
											}
											this.childrenAttributesObservers = null
										}
										this.unobserveChildrenResize()
									}, n
								}(J(HTMLElement))
							},
							ie = {
								APP_IFRAME_START_LOADING: {
									eventId: 642,
									src: 42,
									params: {
										widget_id: "widgetId",
										widget_name: "widgetName",
										instance_id: "compId",
										appId: "appDefinitionId",
										loading_time: "loadingTime",
										pid: "pageId",
										pn: "pageNo",
										iss: "ssr",
										tts: "totalLoadingTime",
										external_app_id: "externalAppDefinitionId",
										external_widget_id: "externalWidgetId",
										lazy_load: "lazyLoad"
									}
								}
							};

						function re(e, t) {
							for(var i = 0; i < t.length; i++) {
								var r = t[i];
								r.enumerable = r.enumerable || !1, r.configurable = !0, "value" in r && (r.writable = !0), Object.defineProperty(e, r.key, r)
							}
						}

						function ne(e, t) {
							return(ne = Object.setPrototypeOf || function(e, t) {
								return e.__proto__ = t, e
							})(e, t)
						}
						var oe = function(e, t) {
								return function(e) {
									var i, r;

									function n() {
										return e.call(this) || this
									}
									r = e, (i = n).prototype = Object.create(r.prototype), i.prototype.constructor = i, ne(i, r);
									var o, a, s, c = n.prototype;
									return c.reportIframeStartLoading = function(e) {
										var i = this.dataset,
											r = i.isTpa,
											n = i.widgetId,
											o = i.appDefinitionId;
										t && t.biService && "true" === r && t.biService.reportTpaBiEvent({
											reportDef: ie.APP_IFRAME_START_LOADING,
											params: {},
											compId: e.getAttribute("name"),
											isWixTPA: !0,
											widgetId: n,
											appDefinitionId: o
										})
									}, c.reLayout = function() {
										var e = this.querySelector("iframe");
										if(e) {
											var t = e.dataset.src;
											t && e.src !== t && (e.src = t, e.dataset.src = "", this.dataset.src = "", this.reportIframeStartLoading(e))
										}
									}, c.attributeChangedCallback = function(e, t, i) {
										i && this.reLayout()
									}, o = n, s = [{
										key: "observedAttributes",
										get: function() {
											return ["data-src"]
										}
									}], (a = null) && re(o.prototype, a), s && re(o, s), n
								}(e)
							},
							ae = "scroll-css-var--scrollEffect",
							se = function() {
								function e(e) {
									var t;
									this.mutationService = e, window && "IntersectionObserver" in window && "IntersectionObserverEntry" in window && "intersectionRatio" in window.IntersectionObserverEntry.prototype && "isIntersecting" in window.IntersectionObserverEntry.prototype && (t = window, !/Edge\/18/.test(t.navigator.userAgent)) && (this.intersectionObserver = new IntersectionObserver(this.getViewPortIntersectionHandler(), {
										rootMargin: "50% 0px"
									}), this.scrollEffectsIntersectionObserver = new IntersectionObserver(this.getScrollEffectsIntersectionHandler(), {
										rootMargin: "10% 0px"
									}))
								}
								var t = e.prototype;
								return t.isImageInViewPort = function(e, t) {
									return e.top + e.height >= 0 && e.bottom - e.height <= t
								}, t.loadImage = function(e, t) {
									var i = t.screenHeight,
										r = t.boundingRect,
										n = t.withScrollEffectVars;
									!this.intersectionObserver || this.isImageInViewPort(r, i) ? this.setImageSource(e) : (this.intersectionObserver.unobserve(e), this.intersectionObserver.observe(e)), n && this.scrollEffectsIntersectionObserver && (this.scrollEffectsIntersectionObserver.unobserve(e), this.scrollEffectsIntersectionObserver.observe(e))
								}, t.onImageDisconnected = function(e) {
									this.intersectionObserver && this.intersectionObserver.unobserve(e), this.scrollEffectsIntersectionObserver && this.scrollEffectsIntersectionObserver.unobserve(e)
								}, t.setSrcAttribute = function(e, t, i) {
									v(e, t) !== i && (t ? e.setAttributeNS("../../www.w3.org/1999/xlink.html", "xlink:href", i) : e.src = i)
								}, t.setSourceSetAttribute = function(e, t) {
									e.srcset !== t && (e.srcset = t)
								}, t.setImageSource = function(e) {
									var t = this,
										i = "true" === e.dataset.isSvg,
										r = e.querySelector(i ? "image" : "img"),
										n = e.querySelector("picture");
									this.setSrcAttribute(r, i, e.dataset.src), n && Array.from(n.querySelectorAll("source")).forEach((function(e) {
										t.setSourceSetAttribute(e, e.dataset.srcset)
									}))
								}, t.getViewPortIntersectionHandler = function() {
									var e = this;
									return function(t, i) {
										t.filter((function(e) {
											return e.isIntersecting
										})).forEach((function(t) {
											var r = t.target;
											e.setImageSource(r), i.unobserve(r)
										}))
									}
								}, t.getScrollEffectsIntersectionHandler = function() {
									var e = this;
									return function(t) {
										return t.forEach((function(t) {
											var i = t.target;
											t.isIntersecting ? e.mutationService.mutate((function() {
												return i.classList.add(ae)
											})) : e.mutationService.mutate((function() {
												return i.classList.remove(ae)
											}))
										}))
									}
								}, e
							}(),
							ce = {
								eventId: 348,
								adapter: "ugc-viewer",
								params: {
									ow: "originalWidth",
									oh: "originalHeight",
									tw: "targetWidth",
									th: "targetHeight",
									dpr: "devicePixelRatio",
									um: "upscaleMethod",
									url: "url"
								}
							};

						function ue(e) {
							var t = e,
								i = (t.width, t.height, function(e, t) {
									if(null == e) return {};
									var i, r, n = {},
										o = Object.keys(e);
									for(r = 0; r < o.length; r++) i = o[r], t.indexOf(i) >= 0 || (n[i] = e[i]);
									return n
								}(t, ["width", "height"])),
								r = {};
							for(e in i) "" !== i[e] && (r[e] = i[e]);
							return r
						}
						var le = {
							measure: function(e, t, i, r, n) {
								var o = r.containerElm,
									a = r.isSvgImage,
									s = r.isSvgMask,
									c = r.mediaHeightOverrideType,
									u = r.bgEffectName,
									l = i.image,
									h = i[e],
									d = w(),
									f = o && u ? o : h,
									p = n.getMediaDimensionsByEffect(u, f.offsetWidth, f.offsetHeight, d),
									g = p.width,
									m = p.height;
								if(l) {
									var b = v(l, a);
									t.width = g, t.screenHeight = d, t.height = c ? d : m, t.isZoomed = h.getAttribute("data-image-zoomed"), t.isSvgImage = a, t.imgSrc = b, t.renderedStyles = h.getAttribute("data-style"), t.boundingRect = h.getBoundingClientRect(), t.mediaHeightOverrideType = c, s && (t.bBox = function(e) {
										if(e) {
											var t = e.dataset.type;
											if(t && "ugc" !== t && !e.dataset.bbox) {
												var i = e.getBBox();
												return i.x + " " + i.y + " " + i.width + " " + i.height
											}
										}
										return null
									}(i.maskSvg))
								}
							},
							patch: function(e, t, i, r, n, o, a, s) {
								var c, u = (c = t.renderedStyles) && c.split ? c.split(";").reduce((function(e, t) {
										var i = t.split(":");
										return i[0] && i[1] && (e[i[0].trim()] = i[1].trim()), e
									}), {}) : {},
									l = r.imageData;
								s && (l.devicePixelRatio = 1);
								var h, f = Object.assign({}, r, {
									containerWidth: t.isZoomed ? l.width : t.width,
									containerHeight: t.isZoomed ? l.height : t.height,
									displayMode: l.displayMode
								});
								if(t.isSvgImage) h = g(f, o, "svg"), _(i.svg, t.isZoomed ? h.attr.container : {});
								else {
									h = g(f, o, "img");
									var p = d(h, ["css", "img"]) || {},
										m = function(e, t, i) {
											if(!e) return t;
											var r = Object.assign({}, t);
											return "fill" === i && (r.position = "absolute", r.top = 0), "fixed" === e && (r.height = "100%", r["will-change"] = "transform"), r.objectPosition && (r.objectPosition = t.objectPosition.replace(/(center|bottom)$/, "top")), r
										}(t.mediaHeightOverrideType, p, l.displayMode);
									y(i.image, m)
								}
								t.bBox && i.maskSvg && _(i.maskSvg, {
									viewBox: t.bBox
								});
								var b = function(e, t) {
									var i = ue(e);
									return "number" == typeof t && (i.opacity = t), i
								}(u, l.opacity);
								y(i[e], b);
								var v = d(h, "uri"),
									T = t.imgSrc;
								_(i[e], {
									"data-src": v
								}), _(i[e], {
									"data-has-ssr-src": ""
								}), a && (! function(e, t, i, r, n) {
									var o = n.uri.match(/,lg_(\d)/);
									t.isViewerMode && n.uri !== r.currentSrc && o && e.reportBI(ce, {
										originalWidth: i.imageData.width,
										originalHeight: i.imageData.height,
										targetWidth: Math.round(i.containerWidth),
										targetHeight: Math.round(i.containerHeight),
										upscaleMethod: "1" === o[1] ? "classic" : "super",
										devicePixelRatio: Math.floor(100 * t.devicePixelRatio),
										url: r.src
									})
								}(n.biService, o, f, {
									src: v,
									currentSrc: T
								}, h), n.imageLoader.loadImage(i[e], {
									screenHeight: t.screenHeight,
									boundingRect: t.boundingRect
								}))
							}
						};

						function he(e, t, i) {
							return void 0 === i && (i = 1.5), {
								parallax: e.height * i,
								fixed: e.screenHeight
							}[t] || e.height
						}
						var de = {
							measure: function(e, t, i) {
								var r = i.image;
								if(r) {
									var n = v(r);
									t.width = i[e].offsetWidth, t.height = i[e].offsetHeight, t.imgSrc = n, t.screenHeight = w(), t.boundingRect = i[e].getBoundingClientRect(), t.documentScroll = window ? window.pageYOffset || document.documentElement.scrollTop : 0
								}
							},
							patch: function(e, t, i, r, n, o, a) {
								var s, c, u = r.imageData,
									l = r.parallaxSpeed,
									h = Object.assign({}, r, {
										containerWidth: t.width,
										containerHeight: he(t, u.scrollEffect, l),
										displayMode: u.displayMode
									}),
									f = (s = u.opacity, c = {}, "number" == typeof s && (c.opacity = s), c);
								y(i[e], f);
								var p = g(h, o, "img"),
									m = d(p, "uri");
								_(i[e], {
									"data-src": m
								});
								var b, v, T = (b = u.scrollEffect, void 0 === (v = r.sourceSets) && (v = []), "parallax" === b || v.some((function(e) {
									return "parallax" === e.scrollEffect
								})));
								T && I(i[e], function(e) {
									var t;
									return(t = {})["--compH"] = e.height, t["--top"] = Math.ceil(e.boundingRect.top) + e.documentScroll, t["--scroll"] = e.documentScroll, t
								}(t));
								var E = function(e) {
									var t = d(e, ["css", "img"]);
									return {
										width: "100%",
										objectFit: t ? t.objectFit : void 0
									}
								}(p);
								y(i.image, E), i.picture && function(e, t, i, r) {
									var n = t.sourceSets;
									if(n && n.length) {
										var o = JSON.parse(JSON.stringify(t)),
											a = o.parallaxSpeed;
										n.forEach((function(t) {
											var n = r.querySelector("source[media='" + t.mediaQuery + "']");
											o.imageData.crop = t.crop, o.imageData.displayMode = t.displayMode, o.imageData.focalPoint = t.focalPoint, o.containerHeight = he(e, t.scrollEffect, a);
											var s = g(o, i, "img");
											_(n, {
												"data-srcset": d(s, "uri")
											})
										}))
									}
								}(t, h, o, i.picture), _(i[e], {
									"data-has-ssr-src": ""
								}), a && n.imageLoader.loadImage(i[e], {
									screenHeight: t.screenHeight,
									boundingRect: t.boundingRect,
									withScrollEffectVars: T
								})
							}
						};

						function fe(e, t) {
							for(var i = 0; i < t.length; i++) {
								var r = t[i];
								r.enumerable = r.enumerable || !1, r.configurable = !0, "value" in r && (r.writable = !0), Object.defineProperty(e, r.key, r)
							}
						}

						function pe(e, t) {
							return(pe = Object.setPrototypeOf || function(e, t) {
								return e.__proto__ = t, e
							})(e, t)
						}
						var ge = function(e, t, i) {
								return t.imageLoader || (t.imageLoader = new se(t.mutationService)),
									function(e) {
										var r, n;

										function o() {
											var t;
											return(t = e.call(this) || this).childListObserver = null, t.timeoutId = null, t
										}
										n = e, (r = o).prototype = Object.create(n.prototype), r.prototype.constructor = r, pe(r, n);
										var a, s, c, u = o.prototype;
										return u.reLayout = function() {
											if(!t.isExperimentOpen("specs.thunderbolt.tb_stop_client_images")) {
												var e = {},
													r = {},
													n = this.getAttribute("id"),
													o = JSON.parse(this.dataset.imageInfo),
													a = "true" === this.dataset.isSvg,
													s = "true" === this.dataset.isSvgMask,
													c = "true" === this.dataset.isResponsive,
													u = this.dataset.bgEffectName;
												e[n] = this, o.containerId && (e[o.containerId] = document.getElementById("" + o.containerId)), e.image = this.querySelector(a ? "image" : "img"), e.svg = a ? this.querySelector("svg") : null, e.picture = this.querySelector("picture");
												var l = o.containerId && e[o.containerId],
													h = l && l.dataset.mediaHeightOverrideType;
												if(s && (e.maskSvg = e.svg && e.svg.querySelector("svg")), e.image) {
													this.unobserveChildren(), this.observeChildren(this);
													var d = c || e.picture ? de : le;
													t.mutationService.measure((function() {
														d.measure(n, r, e, {
															containerElm: l,
															isSvg: a,
															isSvgMask: s,
															mediaHeightOverrideType: h,
															bgEffectName: u
														}, t)
													}));
													var f = function(a) {
														t.mutationService.mutate((function() {
															d.patch(n, r, e, o, t, i, a, u)
														}))
													};
													!v(e.image, a) || this.dataset.hasSsrSrc ? f(!0) : this.debounceImageLoad(f)
												} else {
													var p = a && e.svg || this;
													this.observeChildren(p)
												}
											}
										}, u.debounceImageLoad = function(e) {
											clearTimeout(this.timeoutId), this.timeoutId = setTimeout((function() {
												e(!0)
											}), 250), e(!1)
										}, u.attributeChangedCallback = function(e, t) {
											t && this.reLayout()
										}, u.disconnectedCallback = function() {
											e.prototype.disconnectedCallback.call(this), t.imageLoader.onImageDisconnected(this), this.unobserveChildren()
										}, a = o, c = [{
											key: "observedAttributes",
											get: function() {
												return ["data-image-info"]
											}
										}], (s = null) && fe(a.prototype, s), c && fe(a, c), o
									}(e)
							},
							me = function(e, t, i) {
								var r = i.hasBgScrollEffect,
									n = i.videoWidth,
									o = i.videoHeight,
									a = i.fittingType,
									s = i.alignType,
									c = void 0 === s ? "center" : s,
									u = i.qualities,
									l = i.staticVideoUrl,
									d = i.videoId,
									f = i.videoFormat,
									g = i.focalPoint,
									m = r ? t.offsetWidth : e.parentElement.offsetWidth,
									b = e.parentElement.offsetHeight,
									v = parseInt(n, 10),
									T = parseInt(o, 10),
									_ = function(e, t, i, r) {
										var n;
										n = e === h().fittingTypes.SCALE_TO_FIT ? Math.min(t.wScale, t.hScale) : Math.max(t.wScale, t.hScale);
										return {
											width: Math.round(i * n),
											height: Math.round(r * n)
										}
									}(a, function(e, t, i, r) {
										return {
											wScale: e / i,
											hScale: t / r
										}
									}(m, b, v, T), v, T),
									y = function(e, t, i, r) {
										if("mp4" === r) return e.url ? p(t, e.url) : p(t, i, e.quality, r, "file.mp4");
										return ""
									}(function(e, t) {
										var i = t.width,
											r = t.height;
										return(n = e, o = function(e) {
											return e.size
										}, a = n.reduce((function(e, t) {
											return e[o(t)] = t, e
										}), {}), Object.values(a)).find((function(e) {
											return e.size > i * r
										})) || e[e.length - 1];
										var n, o, a
									}(u, _), l, d, f),
									I = function(e, t) {
										var i = e.networkState === e.NETWORK_NO_SOURCE,
											r = !e.currentSrc.endsWith(t);
										return t && (r || i)
									}(e, y),
									E = O[a] || "cover",
									A = g ? function(e, t, i) {
										var r = e.width,
											n = e.height,
											o = t.width,
											a = t.height,
											s = i.x,
											c = i.y;
										if(!o || !a) return s + "% " + c + "%";
										var u = Math.max(o / r, a / n),
											l = r * u,
											h = n * u,
											d = Math.max(0, Math.min(l - o, l * (s / 100) - o / 2)),
											f = Math.max(0, Math.min(h - a, h * (c / 100) - a / 2)),
											p = d && Math.floor(d / (l - o) * 100),
											g = f && Math.floor(f / (h - a) * 100);
										return p + "% " + g + "%"
									}(_, {
										width: m,
										height: b
									}, g) : "",
									w = c.replace("_", " ");
								return {
									videoSourceUrl: y,
									needsSrcUpdate: I,
									videoStyle: {
										width: "100%",
										height: "100%",
										objectFit: E,
										objectPosition: A || w
									}
								}
							},
							be = function(e, t, i, r, n, o, a, s, c, u, l) {
								_(i, {
										width: r.width,
										height: r.height
									}), t ? y(t, r) : (! function(e, t, i, r, n, o) {
										o && t.paused && (i.style.opacity = "1", t.style.opacity = "0");
										if(t.paused && (e || o))
											if(t.ontimeupdate = null, t.onseeked = null, t.onplay = null, !o && n) {
												var a = t.muted;
												t.muted = !0, t.ontimeupdate = function() {
													t.currentTime > 0 && (t.ontimeupdate = null, t.onseeked = function() {
														t.onseeked = null, t.muted = a, ve(t, i, r)
													}, t.currentTime = 0)
												}
											} else t.onplay = function() {
												t.onplay = null, ve(t, i, r)
											}
									}(a, i, e, s, n, l), n ? i.setAttribute("autoplay", "") : i.removeAttribute("autoplay"), y(i, r)),
									function(e, t, i) {
										e && (t.src = i, t.load())
									}(a, i, o), i.playbackRate = u
							};

						function ve(e, t, i) {
							"fade" === i && (t.style.transition = "opacity 1.6s ease-out"), t.style.opacity = "0", e.style.opacity = "1"
						}

						function Te(e, t) {
							for(var i = 0; i < t.length; i++) {
								var r = t[i];
								r.enumerable = r.enumerable || !1, r.configurable = !0, "value" in r && (r.writable = !0), Object.defineProperty(e, r.key, r)
							}
						}

						function _e(e, t) {
							return(_e = Object.setPrototypeOf || function(e, t) {
								return e.__proto__ = t, e
							})(e, t)
						}
						var ye = function(e, t, i) {
							return function(e) {
								var r, n;

								function o() {
									return e.call(this) || this
								}
								n = e, (r = o).prototype = Object.create(n.prototype), r.prototype.constructor = r, _e(r, n);
								var a, s, c, u = o.prototype;
								return u.reLayout = function() {
									var e = this,
										r = JSON.parse(this.dataset.videoInfo),
										n = r.isVideoDataExists,
										o = r.videoWidth,
										a = r.videoHeight,
										s = r.qualities,
										c = r.videoId,
										u = r.videoFormat,
										l = r.alignType,
										h = r.fittingType,
										d = r.focalPoint,
										f = r.hasBgScrollEffect,
										p = r.autoPlay,
										g = r.animatePoster,
										m = r.containerId,
										b = r.isEditorMode,
										v = r.playbackRate,
										T = r.hasAlpha;
									if(n) {
										var _ = !i.prefersReducedMotion && p,
											y = this.querySelector('video[id^="' + m + '"]'),
											I = this.querySelector('.bgVideoposter[id^="' + m + '"]');
										if(this.unobserveChildren(), y && I) {
											var E = document.getElementById("" + m),
												A = E.querySelector('.webglcanvas[id^="' + m + '"]');
											!(T || "true" === E.dataset.hasAlpha) || A ? t.mutationService.measure((function() {
												var e = me(y, E, {
														hasBgScrollEffect: f,
														videoWidth: o,
														videoHeight: a,
														fittingType: h,
														alignType: l,
														qualities: s,
														staticVideoUrl: i.staticVideoUrl,
														videoId: c,
														videoFormat: u,
														focalPoint: d
													}),
													r = e.videoSourceUrl,
													n = e.needsSrcUpdate,
													p = e.videoStyle;
												t.mutationService.mutate((function() {
													be(I, A, y, p, _, r, n, g, u, v, b)
												}))
											})) : requestAnimationFrame((function() {
												return e.reLayout()
											}))
										} else this.observeChildren(this)
									}
								}, u.attributeChangedCallback = function(e, t) {
									t && this.reLayout()
								}, a = o, c = [{
									key: "observedAttributes",
									get: function() {
										return ["data-video-info"]
									}
								}], (s = null) && Te(a.prototype, s), c && Te(a, c), o
							}(e)
						};

						function Ie(e, t) {
							var i = Object.keys(e);
							if(Object.getOwnPropertySymbols) {
								var r = Object.getOwnPropertySymbols(e);
								t && (r = r.filter((function(t) {
									return Object.getOwnPropertyDescriptor(e, t).enumerable
								}))), i.push.apply(i, r)
							}
							return i
						}

						function Ee(e, t, i) {
							return t in e ? Object.defineProperty(e, t, {
								value: i,
								enumerable: !0,
								configurable: !0,
								writable: !0
							}) : e[t] = i, e
						}

						function Ae(e, t) {
							void 0 === customElements.get(e) && customElements.define(e, t)
						}

						function we(e, t, i) {
							Ae("wix-image", ge(e, t, i))
						}

						function Oe(e, t, i) {
							Ae("wix-bg-image", M(e, t, i))
						}

						function Se(e, t, i, r) {
							Ae("wix-bg-media", C(e, function(e) {
								for(var t = 1; t < arguments.length; t++) {
									var i = null != arguments[t] ? arguments[t] : {};
									t % 2 ? Ie(Object(i), !0).forEach((function(t) {
										Ee(e, t, i[t])
									})) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e, Object.getOwnPropertyDescriptors(i)) : Ie(Object(i)).forEach((function(t) {
										Object.defineProperty(e, t, Object.getOwnPropertyDescriptor(i, t))
									}))
								}
								return e
							}({
								windowResizeService: t
							}, i), r))
						}

						function Le(e, t) {
							Ae("wix-dropdown-menu", q(e, t))
						}

						function Re(e, t, i) {
							Ae("wix-video", ye(e, t, i))
						}

						function Me(e, t) {
							Ae("wix-iframe", oe(e, t))
						}
						var xe = {
							init: function(e) {
								i(50343);
								var t, r, n = e.resizeService.init((function(e) {
										a.getLayoutTargets(e.map((function(e) {
											return e.target
										}))).forEach((function(e) {
											return e.reLayout()
										}))
									})),
									o = {
										registry: new Set,
										observe: function(e) {
											o.registry.add(e)
										},
										unobserve: function(e) {
											o.registry.delete(e)
										}
									};
								e.windowResizeService.init((t = function() {
									return o.registry.forEach((function(e) {
										return e.reLayout()
									}))
								}, r = !1, function() {
									for(var e = arguments.length, i = new Array(e), n = 0; n < e; n++) i[n] = arguments[n];
									r || (r = !0, requestAnimationFrame((function() {
										r = !1, t.apply(void 0, i)
									})))
								}));
								var a = {
										observedElementToRelayoutTarget: new Map,
										getLayoutTargets: function(e) {
											var t = new Set;
											return e.forEach((function(e) {
												return t.add(a.observedElementToRelayoutTarget.get(e))
											})), t
										},
										observe: function(e) {
											a.observedElementToRelayoutTarget.set(e, e), n.observe(e)
										},
										unobserve: function(e) {
											a.observedElementToRelayoutTarget.delete(e), n.unobserve(e)
										},
										observeChild: function(e, t) {
											a.observedElementToRelayoutTarget.set(e, t), n.observe(e)
										},
										unobserveChild: function(e) {
											a.observedElementToRelayoutTarget.delete(e), n.unobserve(e)
										}
									},
									s = te({
										resizeService: a
									});
								return Ae("wix-element", s), {
									defineWixImage: we.bind(null, s),
									defineWixBgImage: Oe.bind(null, s),
									defineWixBgMedia: Se.bind(null, s, o),
									defineWixDropdownMenu: Le.bind(null, s),
									defineWixVideo: Re.bind(null, s),
									defineWixIframe: Me.bind(null, s)
								}
							}
						};

						function Pe(e, t) {
							var i = Object.keys(e);
							if(Object.getOwnPropertySymbols) {
								var r = Object.getOwnPropertySymbols(e);
								t && (r = r.filter((function(t) {
									return Object.getOwnPropertyDescriptor(e, t).enumerable
								}))), i.push.apply(i, r)
							}
							return i
						}

						function Ce(e, t, i) {
							return t in e ? Object.defineProperty(e, t, {
								value: i,
								enumerable: !0,
								configurable: !0,
								writable: !0
							}) : e[t] = i, e
						}
						var Fe, Ge, Be, ke, Ne = function(e) {
								for(var t = 1; t < arguments.length; t++) {
									var i = null != arguments[t] ? arguments[t] : {};
									t % 2 ? Pe(Object(i), !0).forEach((function(t) {
										Ce(e, t, i[t])
									})) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e, Object.getOwnPropertyDescriptors(i)) : Pe(Object(i)).forEach((function(t) {
										Object.defineProperty(e, t, Object.getOwnPropertyDescriptor(i, t))
									}))
								}
								return e
							}({
								imageClientApi: h()
							}, xe),
							De = window.viewerModel,
							He = De.experiments,
							je = De.media,
							Ue = De.requestUrl;
						Fe = {
							experiments: He,
							media: je,
							requestUrl: Ue
						}, Be = Promise.all([!("customElements" in window) && i.e(6211).then(i.t.bind(i, 45918, 23)), !("IntersectionObserver" in window) && i.e(7294).then(i.t.bind(i, 47946, 23)), !("ResizeObserver" in window) && i.e(7971).then(i.bind(i, 5653)).then((function(e) {
							return window.ResizeObserver = e.default
						}))]).then((function() {
							return t = Ge, s = {
								staticMediaUrl: (e = Fe).media.staticMediaUrl,
								mediaRootUrl: e.media.mediaRootUrl,
								experiments: {},
								isViewerMode: !0,
								devicePixelRatio: /iemobile/i.test(navigator.userAgent) ? Math.round(window.screen.availWidth / (window.screen.width || window.document.documentElement.clientWidth)) : window.devicePixelRatio
							}, c = {
								mutationService: o(),
								biService: a.e,
								isExperimentOpen: function(t) {
									return Boolean(e.experiments[t])
								}
							}, l = (0, r.pi)({
								getMediaDimensionsByEffect: function(e, t, i, n) {
									var o = u()[e] || {},
										a = o.getMediaDimensions,
										s = (0, r._T)(o, ["getMediaDimensions"]);
									return a ? (0, r.pi)((0, r.pi)({}, a(t, i, n)), s) : (0, r.pi)({
										width: t,
										height: i
									}, s)
								}
							}, c), (0, r.pi)((0, r.pi)({}, e), {
								wixCustomElements: t || (i = {
									init: function(e) {
										return new ResizeObserver(e)
									}
								}, n = {
									init: function(e) {
										return window.addEventListener("resize", e)
									}
								}, Ne.init({
									resizeService: i,
									windowResizeService: n
								})),
								services: c,
								environmentConsts: s,
								mediaServices: l
							});
							var e, t, i, n, s, c, l
						})), ke = new Promise((function(e) {
							"complete" === document.readyState || "interactive" === document.readyState ? e() : document.addEventListener("readystatechange", (function() {
								return e()
							}), {
								once: !0
							})
						})), Promise.all([Be, ke]).then((function(e) {
							var t = (0, r.CR)(e, 1)[0],
								i = t.services,
								n = t.environmentConsts,
								o = t.wixCustomElements,
								a = t.media,
								c = t.requestUrl,
								u = t.mediaServices,
								l = t.experiments;
							o.defineWixVideo(u, (0, r.pi)((0, r.pi)({}, n), {
								staticVideoUrl: a.staticVideoUrl,
								prefersReducedMotion: (0, s.n)(window, c)
							})), o.defineWixDropdownMenu(i, n), o.defineWixIframe(i, n), (l["specs.thunderbolt.define_wix_image_after_fonts_ready"] ? window.document.fonts.ready : Promise.resolve()).then((function() {
								o.defineWixImage(u, n), o.defineWixBgImage(u, n), o.defineWixBgMedia(u, n)
							}))
						})), window.__imageClientApi__ = Ne.imageClientApi
					},
					21405: function(e, t, i) {
						"use strict";
						i.d(t, {
							n: function() {
								return n
							}
						});
						var r = i(99708),
							n = function(e, t) {
								void 0 === t && (t = "");
								var i = (0, r.ED)(e);
								return t.toLowerCase().includes("forcereducedmotion") || !(!e || i) && e.matchMedia("(prefers-reduced-motion: reduce)").matches
							}
					},
					99708: function(e, t, i) {
						"use strict";
						i.d(t, {
							w1: function() {
								return r
							},
							un: function() {
								return n
							},
							vU: function() {
								return o
							},
							G6: function() {
								return a
							},
							Wc: function() {
								return s
							},
							kX: function() {
								return c
							},
							VE: function() {
								return l
							},
							gn: function() {
								return h
							},
							ED: function() {
								return d
							}
						});
						var r = function(e) {
								return !!e && !!e.document && !!e.document.documentMode
							},
							n = function(e) {
								return u(e).indexOf("edg") > -1
							},
							o = function(e) {
								return u(e).indexOf("firefox") > -1
							},
							a = function(e) {
								var t = u(e);
								return t.indexOf("safari") > -1 && t.indexOf("version") > -1
							},
							s = function(e) {
								if(a(e)) {
									var t = u(e).split(" ");
									return t = (t = t.find((function(e) {
										return e.startsWith("version/index.html")
									}))).split("../index.html")[1], parseInt(t, 10)
								}
								return -1
							},
							c = function(e) {
								var t = u(e);
								return t.indexOf("safari") > -1 && t.indexOf("crios") > -1
							},
							u = function(e) {
								return e && e.navigator && e.navigator.userAgent ? e.navigator.userAgent.toLowerCase() : ""
							},
							l = function(e) {
								var t = u(e);
								return /ip(hone|od|ad).*os 11/.test(t)
							},
							h = function(e) {
								var t = function(e) {
									return e && e.navigator && e.navigator.platform || ""
								}(e);
								return !!t && /iPad|iPhone|iPod/.test(t)
							},
							d = function(e) {
								var t = u(e);
								return !!t && /.*\(win.*\).*/i.test(t)
							}
					},
					64376: function(e, t, i) {
						"use strict";
						var r, n;
						i.d(t, {
								sT: function() {
									return r
								},
								$7: function() {
									return n
								},
								i7: function() {
									return o
								}
							}),
							function(e) {
								e[e.START = 1] = "START", e[e.VISIBLE = 2] = "VISIBLE", e[e.PAGE_FINISH = 33] = "PAGE_FINISH", e[e.FIRST_CDN_RESPONSE = 4] = "FIRST_CDN_RESPONSE", e[e.TBD = -1] = "TBD", e[e.PAGE_NAVIGATION = 101] = "PAGE_NAVIGATION", e[e.PAGE_NAVIGATION_DONE = 103] = "PAGE_NAVIGATION_DONE"
							}(r || (r = {})),
							function(e) {
								e[e.NAVIGATION = 1] = "NAVIGATION", e[e.DYNAMIC_REDIRECT = 2] = "DYNAMIC_REDIRECT", e[e.INNER_ROUTE = 3] = "INNER_ROUTE", e[e.NAVIGATION_ERROR = 4] = "NAVIGATION_ERROR", e[e.CANCELED = 5] = "CANCELED"
							}(n || (n = {}));
						var o = {
							1: "page-navigation",
							2: "page-navigation-redirect",
							3: "page-navigation-inner-route",
							4: "navigation-error",
							5: "navigation-canceled"
						}
					}
				},
				function(e) {
					"use strict";
					e.O(0, [4767, 8050, 142], (function() {
						return t = 17948, e(e.s = t);
						var t
					}));
					e.O()
				}
			]);
			//# sourceMappingURL=https://static.parastorage.com/services/wix-thunderbolt/dist/initCustomElements.inline.b649141a.bundle.min.js.map
			</script>
			<!-- tbElements js -->
			<script src="../../static.parastorage.com/services/editor-elements/dist/thunderboltElements.2c265144.bundle.min.js" defer="" onload="window.ThunderboltElementsLoadedResolve()"></script>
			<script async id="wix-perf-measure" src="../../static.parastorage.com/services/wix-perf-measure/1.474.0/wix-perf-measure.bundle.min.js"></script>
			<!-- react-dom -->
			<script crossorigin src="../../static.parastorage.com/unpkg/react-dom%4016.13.1/umd/react-dom.production.min.js" onload="externalsRegistry.reactDOM.onload()" defer=""></script>
			<meta http-equiv="X-Wix-Meta-Site-Id" content="0858e1c1-becd-479d-b78e-4f96e1892037">
			<meta http-equiv="X-Wix-Application-Instance-Id" content="e209736b-cfdf-43f1-92e3-cd9a14a1dbb9">
			<meta http-equiv="X-Wix-Published-Version" content="414" />
			<meta http-equiv="etag" content="bug" />
			<!-- render-head end -->
			<style data-href="https://static.parastorage.com/services/editor-elements/dist/bootstrap-components-common.615c65be.chunk.min.css">
			._2_Pya {
				position: absolute;
				top: 0;
				right: 0;
				bottom: 0;
				width: 100%;
				left: 0
			}
			
			._1s0Ge {
				transition: .2s ease-in;
				transform: translateY(-100%)
			}
			
			._3-JNd {
				transition: .2s;
				transform: translateY(0)
			}
			
			.FxFZJ {
				transition: .2s ease-in;
				opacity: 0;
				visibility: hidden
			}
			
			.lSyDa {
				transition: .2s;
				opacity: 1
			}
			
			._1jI8r {
				height: auto
			}
			
			._1jI8r,
			._2qN73 {
				position: relative;
				width: 100%
			}
			
			body:not(.모바일최적화) ._1M8CM {
				margin-left: calc((100% - var(--site-width)) / 2);
				width: var(--site-width)
			}
			
			._17W7D,
			.UZpZM ._1M8CM {
				position: absolute;
				top: 0;
				right: 0;
				bottom: 0;
				left: 0
			}
			
			.s0eeT {
				cursor: pointer
			}
			
			.TG-Zk {
				-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
				opacity: var(--opacity);
				fill: var(--fill);
				fill-opacity: var(--fill-opacity);
				stroke: var(--stroke);
				stroke-opacity: var(--stroke-opacity);
				stroke-width: var(--stroke-width);
				transform: var(--flip);
				filter: var(--drop-shadow, none)
			}
			
			.TG-Zk,
			.TG-Zk svg {
				position: absolute;
				top: 0;
				right: 0;
				bottom: 0;
				left: 0
			}
			
			.TG-Zk svg {
				width: var(--svg-calculated-width, 100%);
				height: var(--svg-calculated-height, 100%);
				padding: var(--svg-calculated-padding, 0);
				margin: auto
			}
			
			._1UnNA * {
				vector-effect: non-scaling-stroke
			}
			
			._27iav svg,
			._37OKp svg {
				overflow: visible!important
			}
			
			@media not all and (min-resolution:0.001dpcm) {
				@supports (-webkit-appearance: none) {
					.TG-Zk._37OKp {
						will-change: filter
					}
				}
			}
			
			._2HrZd {
				opacity: 0
			}
			
			._2fuJI {
				transition: opacity var(--transition-duration) cubic-bezier(.37, 0, .63, 1)
			}
			
			._2fuJI,
			.g0xNe {
				opacity: 1
			}
			
			.PeTAs {
				transition: opacity var(--transition-duration) cubic-bezier(.37, 0, .63, 1)
			}
			
			._1IGjY,
			.PeTAs {
				opacity: 0
			}
			
			.Ic0Mb {
				transition: opacity var(--transition-duration) cubic-bezier(.64, 0, .78, 0)
			}
			
			.Ic0Mb,
			.WjNI2 {
				opacity: 1
			}
			
			.Y5LuX {
				opacity: 0;
				transition: opacity var(--transition-duration) cubic-bezier(.22, 1, .36, 1)
			}
			
			._3P3IS {
				transform: translateX(100%)
			}
			
			._1vZD6 {
				transition: transform var(--transition-duration) cubic-bezier(.87, 0, .13, 1)
			}
			
			._1vZD6,
			.AM-g_ {
				transform: translateX(0)
			}
			
			._1MVJv {
				transition: transform var(--transition-duration) cubic-bezier(.87, 0, .13, 1)
			}
			
			._1MVJv,
			._2uVRM {
				transform: translateX(-100%)
			}
			
			._2kt-u {
				transition: transform var(--transition-duration) cubic-bezier(.87, 0, .13, 1)
			}
			
			._2kt-u,
			._3f6Db {
				transform: translateX(0)
			}
			
			._3u3Qg {
				transform: translateX(100%);
				transition: transform var(--transition-duration) cubic-bezier(.87, 0, .13, 1)
			}
			
			._2LoMk {
				transform: translateY(100%)
			}
			
			._3VRRq {
				transition: transform var(--transition-duration) cubic-bezier(.87, 0, .13, 1)
			}
			
			._3VRRq,
			._8b5uM {
				transform: translateY(0)
			}
			
			._1c8N5 {
				transition: transform var(--transition-duration) cubic-bezier(.87, 0, .13, 1)
			}
			
			._1c8N5,
			._1SRt2 {
				transform: translateY(-100%)
			}
			
			.mMep- {
				transition: transform var(--transition-duration) cubic-bezier(.87, 0, .13, 1)
			}
			
			._3jOkM,
			.mMep- {
				transform: translateY(0)
			}
			
			._1hGK7 {
				transform: translateY(100%);
				transition: transform var(--transition-duration) cubic-bezier(.87, 0, .13, 1)
			}
			
			.StylableButton1872886392__root {
				-archetype: box;
				cursor: pointer;
				border: none;
				display: block;
				min-width: 10px;
				min-height: 10px;
				width: 100%;
				height: 100%;
				box-sizing: border-box;
				padding: 0
			}
			
			.StylableButton1872886392__root[disabled] {
				pointer-events: none
			}
			
			.StylableButton1872886392__root.StylableButton1872886392--hasBackgroundColor {
				background-color: var(--corvid-background-color)!important
			}
			
			.StylableButton1872886392__root.StylableButton1872886392--hasBorderColor {
				border-color: var(--corvid-border-color)!important
			}
			
			.StylableButton1872886392__root.StylableButton1872886392--hasBorderRadius {
				border-radius: var(--corvid-border-radius)!important
			}
			
			.StylableButton1872886392__root.StylableButton1872886392--hasBorderWidth {
				border-width: var(--corvid-border-width)!important
			}
			
			.StylableButton1872886392__root.StylableButton1872886392--hasColor,
			.StylableButton1872886392__root.StylableButton1872886392--hasColor .StylableButton1872886392__label {
				color: var(--corvid-color)!important
			}
			
			.StylableButton1872886392__link {
				-archetype: box;
				text-decoration: none;
				box-sizing: border-box;
				color: #000
			}
			
			.StylableButton1872886392__container {
				display: flex;
				flex-basis: auto;
				justify-content: center;
				flex-direction: row;
				flex-grow: 1;
				align-items: center;
				overflow: hidden;
				height: 100%;
				width: 100%;
				transition: all .2s ease, visibility 0s
			}
			
			.StylableButton1872886392__label {
				-archetype: text;
				-controller-part-type: LayoutChildDisplayDropdown, LayoutFlexChildSpacing(first);
				overflow: hidden;
				text-overflow: ellipsis;
				white-space: nowrap;
				min-width: 1.8em;
				max-width: 100%;
				transition: inherit
			}
			
			.StylableButton1872886392__icon {
				-archetype: icon;
				-controller-part-type: LayoutChildDisplayDropdown, LayoutFlexChildSpacing(last);
				min-width: 1px;
				height: 50px;
				transition: inherit;
				flex-shrink: 0
			}
			
			.StylableButton1872886392__icon>div,
			.StylableButton1872886392__icon svg {
				display: flex;
				width: inherit;
				height: inherit
			}
			
			.GFY_- {
				pointer-events: none;
				overflow: hidden;
				padding: 0;
				white-space: nowrap
			}
			
			._2Yk_Z {
				cursor: pointer
			}
			
			ol.font_100,
			ul.font_100 {
				color: #080808;
				font-family: "Arial, Helvetica, sans-serif", serif;
				font-size: 10px;
				font-style: normal;
				font-variant: normal;
				font-weight: 400;
				margin: 0;
				text-decoration: none;
				line-height: normal;
				letter-spacing: normal
			}
			
			ol.font_100 li,
			ul.font_100 li {
				margin-bottom: 12px
			}
			
			ol.wix-list-text-align,
			ul.wix-list-text-align {
				list-style-position: inside
			}
			
			ol.wix-list-text-align h1,
			ol.wix-list-text-align h2,
			ol.wix-list-text-align h3,
			ol.wix-list-text-align h4,
			ol.wix-list-text-align h5,
			ol.wix-list-text-align h6,
			ol.wix-list-text-align p,
			ul.wix-list-text-align h1,
			ul.wix-list-text-align h2,
			ul.wix-list-text-align h3,
			ul.wix-list-text-align h4,
			ul.wix-list-text-align h5,
			ul.wix-list-text-align h6,
			ul.wix-list-text-align p {
				display: inline
			}
			
			._2tuyK {
				cursor: pointer
			}
			
			.XcBF6 ._1cEyW {
				position: relative;
				width: 100%;
				height: 100%;
				word-wrap: break-word;
				overflow-wrap: break-word
			}
			
			.XcBF6 ._1cEyW ul {
				list-style: disc inside
			}
			
			.XcBF6 ._1cEyW li {
				margin-bottom: 12px
			}
			
			.숲많이감클래스 blockquote,
			.숲많이감클래스 h1,
			.숲많이감클래스 h2,
			.숲많이감클래스 h3,
			.숲많이감클래스 h4,
			.숲많이감클래스 h5,
			.숲많이감클래스 h6,
			.숲많이감클래스 p {
				line-height: normal;
				letter-spacing: normal
			}
			
			.lJm9X ._1cEyW {
				position: relative;
				width: 100%;
				height: 100%;
				word-wrap: break-word;
				overflow-wrap: break-word
			}
			
			.lJm9X ._1cEyW ol,
			.lJm9X ._1cEyW ul {
				padding-left: 1.3em;
				margin-left: .5em;
				line-height: normal;
				letter-spacing: normal
			}
			
			.lJm9X ._1cEyW ol[dir=rtl],
			.lJm9X ._1cEyW ul[dir=rtl] {
				padding-right: 1.3em;
				margin-right: .5em
			}
			
			.lJm9X ._1cEyW ul {
				list-style-type: disc
			}
			
			.lJm9X ._1cEyW ol {
				list-style-type: decimal
			}
			
			.lJm9X ._1cEyW ol[dir=rtl],
			.lJm9X ._1cEyW ul[dir=rtl] {
				padding-right: 1.3em;
				margin-right: .5em
			}
			
			.lJm9X ._1cEyW ol ul,
			.lJm9X ._1cEyW ul ul {
				list-style-type: circle;
				line-height: normal
			}
			
			.lJm9X ._1cEyW ol ol ul,
			.lJm9X ._1cEyW ol ul ul,
			.lJm9X ._1cEyW ul ol ul,
			.lJm9X ._1cEyW ul ul ul {
				list-style-type: square;
				line-height: normal
			}
			
			.lJm9X ._1cEyW li {
				font-style: inherit;
				font-weight: inherit;
				line-height: inherit;
				letter-spacing: normal
			}
			
			.lJm9X ._1cEyW h1,
			.lJm9X ._1cEyW h2,
			.lJm9X ._1cEyW h3,
			.lJm9X ._1cEyW h4,
			.lJm9X ._1cEyW h5,
			.lJm9X ._1cEyW h6,
			.lJm9X ._1cEyW p {
				margin: 0;
				line-height: normal;
				letter-spacing: normal
			}
			
			.lJm9X ._1cEyW a {
				color: inherit
			}
			
			.숲많이감클래스,
			.afVXQ {
				word-wrap: break-word;
				overflow-wrap: break-word;
				text-align: start;
				pointer-events: none
			}
			
			.숲많이감클래스>*,
			.afVXQ>* {
				pointer-events: auto
			}
			
			.숲많이감클래스 li,
			.afVXQ li {
				font-style: inherit;
				font-weight: inherit;
				line-height: inherit;
				letter-spacing: normal
			}
			
			.숲많이감클래스 ol,
			.숲많이감클래스 ul,
			.afVXQ ol,
			.afVXQ ul {
				padding-left: 1.3em;
				padding-right: 0;
				margin-left: .5em;
				margin-right: 0;
				line-height: normal;
				letter-spacing: normal
			}
			
			.숲많이감클래스 ul,
			.afVXQ ul {
				list-style-type: disc
			}
			
			.숲많이감클래스 ol,
			.afVXQ ol {
				list-style-type: decimal
			}
			
			.숲많이감클래스 ol ul,
			.숲많이감클래스 ul ul,
			.afVXQ ol ul,
			.afVXQ ul ul {
				list-style-type: circle
			}
			
			.숲많이감클래스 ol ol ul,
			.숲많이감클래스 ol ul ul,
			.숲많이감클래스 ul ol ul,
			.숲많이감클래스 ul ul ul,
			.afVXQ ol ol ul,
			.afVXQ ol ul ul,
			.afVXQ ul ol ul,
			.afVXQ ul ul ul {
				list-style-type: square
			}
			
			.숲많이감클래스 ol[dir=rtl],
			.숲많이감클래스 ol[dir=rtl] ol,
			.숲많이감클래스 ol[dir=rtl] ul,
			.숲많이감클래스 ul[dir=rtl],
			.숲많이감클래스 ul[dir=rtl] ol,
			.숲많이감클래스 ul[dir=rtl] ul,
			.afVXQ ol[dir=rtl],
			.afVXQ ol[dir=rtl] ol,
			.afVXQ ol[dir=rtl] ul,
			.afVXQ ul[dir=rtl],
			.afVXQ ul[dir=rtl] ol,
			.afVXQ ul[dir=rtl] ul {
				padding-left: 0;
				padding-right: 1.3em;
				margin-left: 0;
				margin-right: .5em
			}
			
			.숲많이감클래스 blockquote,
			.숲많이감클래스 h1,
			.숲많이감클래스 h2,
			.숲많이감클래스 h3,
			.숲많이감클래스 h4,
			.숲많이감클래스 h5,
			.숲많이감클래스 h6,
			.숲많이감클래스 p,
			.afVXQ blockquote,
			.afVXQ h1,
			.afVXQ h2,
			.afVXQ h3,
			.afVXQ h4,
			.afVXQ h5,
			.afVXQ h6,
			.afVXQ p {
				margin: 0
			}
			
			.숲많이감클래스 a,
			.afVXQ a {
				color: inherit
			}
			
			.스트레치 {
				display: grid;
				grid-template-rows: 1fr;
				grid-template-columns: 1fr
			}
			
			.스트레치>div {
				justify-self: stretch!important;
				align-self: stretch!important
			}
			
			._2oJTp {
				top: 0;
				left: 0;
				position: fixed;
				width: 100%;
				height: calc(100% - var(--wix-ads-height));
				margin-top: var(--wix-ads-height);
				display: grid;
				grid-template-columns: 1fr;
				grid-template-rows: 1fr
			}
			
			._1PGFM,
			._2oJTp {
				pointer-events: none;
				z-index: var(--pinned-layer-in-container, var(--above-all-in-container))
			}
			</style>
			<style data-href="https://static.parastorage.com/services/editor-elements/dist/bootstrap-components-classic.cfece4d6.chunk.min.css">
			.dmysR {
				position: absolute;
				top: 0;
				right: 0;
				bottom: 0;
				width: 100%;
				left: 0
			}
			
			._1veUs {
				transition: .2s ease-in;
				transform: translateY(-100%)
			}
			
			._3FGUd {
				transition: .2s;
				transform: translateY(0)
			}
			
			._2JCUO {
				transition: .2s ease-in;
				opacity: 0;
				visibility: hidden
			}
			
			._2qLBX {
				transition: .2s;
				opacity: 1
			}
			
			._1MBwI {
				height: auto
			}
			
			._1MBwI,
			._2_pp6 {
				position: relative;
				width: 100%
			}
			
			body:not(.모바일최적화) ._1DMOb {
				margin-left: calc((100% - var(--site-width)) / 2);
				width: var(--site-width)
			}
			
			._26XlU .kvZ7q {
				top: 0;
				bottom: 0;
				box-shadow: var(--shd, 0 0 5px rgba(0, 0, 0, .7));
				background-color: var(--screenwidth-corvid-background-color, rgba(var(--bg, var(--color_11)), var(--alpha-bg, 1)));
				border-top: var(--brwt, 0) solid var(--screenwidth-corvid-border-color, rgba(var(--brd, var(--color_15)), var(--alpha-brd, 1)));
				border-bottom: var(--brwb, 0) solid var(--screenwidth-corvid-border-color, rgba(var(--brd, var(--color_15)), var(--alpha-brd, 1)))
			}
			
			._26XlU .kvZ7q,
			._26XlU .mtROD {
				position: absolute;
				right: 0;
				left: 0
			}
			
			._26XlU .mtROD {
				top: var(--brwt, 0);
				bottom: var(--brwb, 0);
				border-radius: var(--rd, 0);
				background-color: rgba(var(--bgctr, var(--color_11)), var(--alpha-bgctr, 1))
			}
			
			._26XlU ._1DMOb {
				position: absolute;
				top: 0;
				right: 0;
				bottom: 0;
				left: 0
			}
			
			body.모바일최적화 ._26XlU ._1DMOb {
				left: 10px;
				right: 10px
			}
			
			.릴레이티브비지블 {
				position: relative;
				overflow: visible
			}
			
			._1XT8x {
				-webkit-backface-visibility: hidden;
				backface-visibility: hidden
			}
			
			._2US5Z {
				cursor: pointer
			}
			
			.cs8rE {
				border-color: var(--hover-box-border-color);
				border-radius: var(--hover-box-border-radius);
				border-style: var(--hover-box-border-style);
				border-width: var(--hover-box-border-width);
				box-shadow: var(--hover-box-box-shadow);
				transform: var(--hover-box-transform);
				margin: var(--hover-box-margin);
				overflow: var(--hover-box-overflow);
				position: relative
			}
			
			.oneButtonLinkClass {
				text-align: initial;
				display: flex;
				align-items: center;
				box-sizing: border-box;
				width: -webkit-max-content;
				width: -moz-max-content;
				width: max-content;
				justify-content: var(--label-align);
				min-width: 100%
			}
			
			.oneButtonLinkClass:before {
				max-width: var(--margin-left, 0)
			}
			
			.oneButtonLinkClass:after,
			.oneButtonLinkClass:before {
				content: "";
				flex-grow: 1;
				align-self: stretch
			}
			
			.oneButtonLinkClass:after {
				max-width: var(--margin-right, 0)
			}
			
			.oneButton {
				height: 100%
			}
			
			.oneButton .oneButtonLinkClass {
				border-radius: var(--corvid-border-radius, var(--rd, 0));
				position: absolute;
				top: 0;
				right: 0;
				bottom: 0;
				left: 0;
				transition: var(--trans1, border-color .4s ease 0s, background-color .4s ease 0s);
				box-shadow: var(--shd, 0 1px 4px rgba(0, 0, 0, .6))
			}
			
			.oneButton .oneButtonLinkClass:link,
			.oneButton .oneButtonLinkClass:visited {
				border-color: transparent
			}
			
			.oneButton .oneButtonSpanClass {
				font: var(--fnt, var(--font_5));
				transition: var(--trans2, color .4s ease 0s);
				color: var(--corvid-color, rgb(var(--txt, var(--color_15))));
				position: relative;
				white-space: nowrap;
				margin: 0
			}
			
			.oneButton[aria-disabled=false] .oneButtonLinkClass {
				background-color: var(--corvid-background-color, rgba(var(--bg, var(--color_17)), var(--alpha-bg, 1)));
				border: solid var(--corvid-border-color, rgba(var(--brd, var(--color_15)), var(--alpha-brd, 1))) var(--corvid-border-width, var(--brw, 0));
				cursor: pointer!important
			}
			
			body.모바일최적화 .oneButton[aria-disabled=false]:active .oneButtonLinkClass {
				background-color: rgba(var(--bgh, var(--color_18)), var(--alpha-bgh, 1));
				border-color: rgba(var(--brdh, var(--color_15)), var(--alpha-brdh, 1))
			}
			
			body.모바일최적화 .oneButton[aria-disabled=false]:active .oneButtonSpanClass {
				color: rgb(var(--txth, var(--color_15)))
			}
			
			body:not(.모바일최적화) .oneButton[aria-disabled=false]:hover .oneButtonLinkClass {
				background-color: rgba(var(--bgh, var(--color_18)), var(--alpha-bgh, 1));
				border-color: rgba(var(--brdh, var(--color_15)), var(--alpha-brdh, 1))
			}
			
			body:not(.모바일최적화) .oneButton[aria-disabled=false]:hover .oneButtonSpanClass {
				color: rgb(var(--txth, var(--color_15)))
			}
			
			.oneButton[aria-disabled=true] .oneButtonLinkClass {
				background-color: rgba(var(--bgd, 204, 204, 204), var(--alpha-bgd, 1));
				border-color: rgba(var(--brdd, 204, 204, 204), var(--alpha-brdd, 1));
				border-width: var(--corvid-border-width, var(--brw, 0));
				border-style: solid
			}
			
			.oneButton[aria-disabled=true] .oneButtonSpanClass {
				color: rgb(var(--txtd, 255, 255, 255))
			}
			
			._3oqF5 {
				text-align: initial;
				display: flex;
				align-items: center;
				box-sizing: border-box;
				width: -webkit-max-content;
				width: -moz-max-content;
				width: max-content;
				justify-content: var(--label-align);
				min-width: 100%
			}
			
			._3oqF5:before {
				max-width: var(--margin-left, 0)
			}
			
			._3oqF5:after,
			._3oqF5:before {
				content: "";
				flex-grow: 1;
				align-self: stretch
			}
			
			._3oqF5:after {
				max-width: var(--margin-right, 0)
			}
			
			._1P1ro[aria-disabled=false] ._3oqF5 {
				cursor: pointer
			}
			
			body.모바일최적화 ._1P1ro[aria-disabled=false]:active ._22ngm,
			body:not(.모바일최적화) ._1P1ro[aria-disabled=false]:hover ._22ngm {
				color: rgb(var(--txth, var(--color_15)));
				transition: var(--trans, color .4s ease 0s)
			}
			
			._1P1ro ._3oqF5 {
				position: absolute;
				top: 0;
				right: 0;
				bottom: 0;
				left: 0
			}
			
			._1P1ro ._22ngm {
				font: var(--fnt, var(--font_5));
				transition: var(--trans, color .4s ease 0s);
				color: var(--corvid-color, rgb(var(--txt, var(--color_15))));
				white-space: nowrap
			}
			
			._1P1ro[aria-disabled=true] ._22ngm {
				color: rgb(var(--txtd, 255, 255, 255))
			}
			
			._2AO2a {
				position: var(--bg-position);
				top: var(--wix-ads-height);
				min-height: calc(100vh - var(--wix-ads-height));
				height: 100%;
				width: 100%;
				min-width: var(--site-width)
			}
			
			body:not(.모바일최적화) .확인용6 {
				display: flex
			}
			
			body:not(.모바일최적화) .확인용8 {
				display: flex;
				position: relative;
				width: calc(100% - var(--padding) * 2);
				margin: 0 auto
			}
			
			body:not(.모바일최적화) .확인용8>* {
				flex: var(--column-flex) 1 0%;
				min-width: 0;
				margin-top: var(--padding);
				margin-bottom: var(--padding);
				position: relative;
				left: 0;
				top: 0;
				margin-left: var(--margin)
			}
			
			body:not(.모바일최적화) .확인용8>:first-child {
				margin-left: 0
			}
			
			body.모바일최적화 .확인용8 {
				display: block;
				position: relative;
				padding: var(--padding) 0
			}
			
			body.모바일최적화 .확인용8>* {
				margin-bottom: var(--margin);
				position: relative
			}
			
			body.모바일최적화 .확인용8>:first-child {
				margin-top: -1px
			}
			
			body.모바일최적화 .확인용8>:last-child {
				margin-bottom: -1px
			}
			
			._1NovW {
				-webkit-backface-visibility: hidden;
				backface-visibility: hidden
			}
			
			.rca7A {
				width: 100%;
				height: 100%;
				display: block
			}
			
			.rca7A svg._1eMqj {
				width: 0;
				height: 0;
				left: 0;
				top: 0;
				overflow: hidden;
				position: absolute
			}
			
			._1K4Go,
			._1K4Go svg {
				width: 100%;
				height: 100%
			}
			
			._22Lsw,
			.확인용7 {
				position: absolute;
				top: 0;
				width: 100%;
				height: 100%;
				overflow: hidden
			}
			
			.확인용7 {
				left: 0;
				-webkit-mask-image: var(--mask-image, none);
				mask-image: var(--mask-image, none);
				-webkit-mask-position: var(--mask-position, 0);
				mask-position: var(--mask-position, 0);
				-webkit-mask-size: var(--mask-size, 100%);
				mask-size: var(--mask-size, 100%);
				-webkit-mask-repeat: var(--mask-repeat, no-repeat);
				mask-repeat: var(--mask-repeat, no-repeat);
				pointer-events: var(--fill-layer-background-media-pointer-events)
			}
			
			.확인용7._2AZ6T {
				clip: rect(0, auto, auto, 0)
			}
			
			@media not all and (min-resolution:0.001dpcm) {
				@supports (-webkit-appearance: none) {
					._2AZ6T {
						clip: auto;
						-webkit-clip-path: inset(0)
					}
				}
			}
			
			.높이백 {
				height: 100%
			}
			
			.mlsxv {
				background-color: var(--bg-overlay-color)
			}
			
			._1-b-O {
				opacity: var(--fill-layer-image-opacity);
				height: var(--fill-layer-image-height, 100%)
			}
			
			._1-b-O img {
				width: 100%;
				height: 100%
			}
			
			.kBelp,
			.xcG1w {
				opacity: var(--fill-layer-video-opacity)
			}
			
			._2kjIP {
				position: absolute;
				width: 100%;
				height: var(--media-padding-height);
				top: var(--media-padding-top);
				bottom: var(--media-padding-bottom)
			}
			
			.ysaOK {
				transform: scale(var(--scale, 1));
				transition: var(--transform-duration, transform 0s)
			}
			
			.kBelp {
				position: relative;
				width: 100%;
				height: 100%
			}
			
			._1n_5u {
				-webkit-clip-path: var(--fill-layer-clip);
				clip-path: var(--fill-layer-clip)
			}
			
			._1n_5u,
			._3UHRA {
				position: absolute;
				top: 0
			}
			
			._1n_5u,
			._1ytkV img,
			._3UHRA {
				width: 100%;
				height: 100%
			}
			
			._1BP2G {
				position: absolute;
				top: 0
			}
			
			._3nV6U {
				position: var(--fill-layer-background-media-position);
				pointer-events: var(--fill-layer-background-media-pointer-events);
				left: 0
			}
			
			._1qeol,
			._3nV6U,
			.YhHhy {
				width: 100%;
				height: 100%;
				top: 0
			}
			
			.YhHhy {
				position: absolute
			}
			
			._1qeol {
				background-color: var(--fill-layer-background-overlay-color);
				position: var(--fill-layer-background-overlay-position);
				opacity: var(--fill-layer-background-overlay-blend-opacity-fallback, 1);
				transform: var(--fill-layer-background-overlay-transform)
			}
			
			@supports (mix-blend-mode:overlay) {
				._1qeol {
					mix-blend-mode: var(--fill-layer-background-overlay-blend-mode);
					opacity: var(--fill-layer-background-overlay-blend-opacity, 1)
				}
			}
			
			._2ws69 {
				cursor: pointer
			}
			
			._2edl5 {
				width: 100%;
				height: 100%;
				box-sizing: border-box
			}
			
			._2ztx1 {
				min-height: var(--image-min-height);
				min-width: var(--image-min-width)
			}
			
			._2ztx1 img {
				-o-object-position: var(--object-position);
				object-position: var(--object-position);
				filter: var(--filter-effect-svg-url)
			}
			
			.Ued3M {
				position: var(--position-fixed, static);
				left: var(--left, auto);
				top: var(--top, auto);
				z-index: var(--z-index, auto)
			}
			
			.Ued3M ._2ztx1 img {
				position: static;
				box-shadow: 0 0 0 #000;
				-webkit-user-select: none;
				-moz-user-select: none;
				-ms-user-select: none;
				user-select: none
			}
			
			.Ued3M ._2edl5 {
				display: block
			}
			
			.Ued3M ._2edl5,
			.Ued3M ._2ztx1 {
				overflow: hidden
			}
			
			._1m93a .PE8t5 ._2-pBe {
				display: var(--item-display);
				width: var(--item-size);
				height: var(--item-size)
			}
			
			._1m93a .PE8t5 ._2-pBe:not(:last-child) {
				margin: var(--item-margin)
			}
			
			._1m93a .PE8t5 ._2-pBe .fNVUF {
				display: block
			}
			
			._1m93a .PE8t5 ._2-pBe .fNVUF ._21zrA {
				width: var(--item-size);
				height: var(--item-size)
			}
			
			._1m93a .PE8t5 {
				position: absolute;
				width: 100%;
				height: 100%;
				white-space: nowrap
			}
			
			body.모바일최적화 ._1m93a .PE8t5 {
				white-space: normal
			}
			
			._3XkhD {
				position: absolute;
				top: 0;
				right: 0;
				bottom: 0;
				left: 0
			}
			
			._3UCvU {
				height: auto;
				width: 100%;
				position: relative
			}
			
			body:not(.responsive) ._3V_xK {
				height: 100%;
				position: relative;
				left: 0;
				grid-area: 1/1/1/1;
				align-self: start;
				justify-self: stretch
			}
			
			body:not(.모바일최적화) ._3XkhD {
				margin-left: calc((100% - var(--site-width)) / 2);
				width: var(--site-width)
			}
			
			._4INfd ._3XkhD {
				overflow: hidden;
				background-color: rgba(var(--bg, var(--color_11)), var(--alpha-bg, 1))
			}
			
			body.모바일최적화 ._3XkhD {
				left: 10px;
				right: 10px
			}
			
			.확인용3 {
				position: absolute;
				top: 0;
				right: 0;
				bottom: 0;
				left: 0
			}
			
			.확인용4 {
				height: auto;
				width: 100%;
				position: relative
			}
			
			body:not(.responsive) .확인용2 {
				height: 100%;
				position: relative;
				left: 0;
				grid-area: 1/1/1/1;
				align-self: start;
				justify-self: stretch
			}
			
			body:not(.모바일최적화) .확인용3 {
				margin-left: calc((100% - var(--site-width)) / 2);
				width: var(--site-width)
			}
			
			body.모바일최적화 .확인용3 {
				left: 10px;
				right: 10px
			}
			
			.확인용5 {
				pointer-events: none
			}
			</style>
			<style data-href="https://static.parastorage.com/services/editor-elements/dist/Container_RectangleArea.7d2f38d5.chunk.min.css">
			._2_2nr {
				--container-corvid-background-color: rgba(var(--bg, var(--color_11)), var(--alpha-bg, 1))
			}
			
			._3oi4n {
				overflow: hidden;
				position: absolute;
				top: 0;
				right: 0;
				bottom: 0;
				left: 0;
				background-color: var(--container-corvid-background-color, rgba(var(--bg, var(--color_11)), var(--alpha-bg, 1)))
			}
			</style>
			<style data-href="https://static.parastorage.com/services/editor-elements/dist/VerticalMenu_VerticalMenuSolidColorSkin.9a2aa3ad.chunk.min.css">
			._3JSHe {
				margin: 0 10px;
				opacity: .6
			}
			
			._25-B7 {
				height: auto!important
			}
			
			._3rKL6 .-SaFH {
				border: solid var(--brw, 1px) rgba(var(--brd, var(--color_15)), var(--alpha-brd, 1));
				box-shadow: var(--shd, 0 1px 4px rgba(0, 0, 0, .6));
				border-radius: var(--rd, 0)
			}
			
			._3rKL6 .XOxx5 {
				height: 100%;
				width: 100%;
				position: relative;
				border-bottom: solid var(--sepw, 1px) rgba(var(--sep, var(--color_15)), var(--alpha-sep, 1))
			}
			
			._3rKL6 .XOxx5:last-child {
				border-bottom: 0
			}
			
			._3rKL6 ._3YiKB {
				box-sizing: border-box;
				position: absolute;
				min-width: 100%;
				z-index: 999;
				visibility: hidden;
				border: solid var(--brw, 1px) rgba(var(--brd, var(--color_15)), var(--alpha-brd, 1));
				border-radius: var(--SKINS_submenuBR, 0);
				box-shadow: var(--shd, 0 1px 4px rgba(0, 0, 0, .6))
			}
			
			._3rKL6 ._3YiKB._3lA5t {
				left: calc(100% + var(--SKINS_submenuMargin, 8px))
			}
			
			._3rKL6 ._3YiKB._1s_ZM {
				right: calc(100% + var(--SKINS_submenuMargin, 8px))
			}
			
			._3rKL6 ._3YiKB._3DGWF {
				bottom: var(--brw, 1px)
			}
			
			._3rKL6 ._3YiKB._13b8L {
				top: calc(-1 * var(--brw, 1px))
			}
			
			._3rKL6 ._3YiKB:before {
				content: " ";
				height: 100%;
				width: var(--SKINS_submenuMargin, 8px);
				position: absolute;
				top: 0;
				right: var(--sub-menu-open-direction-right, auto);
				left: var(--sub-menu-open-direction-left, 0);
				margin-right: calc(-1 * var(--SKINS_submenuMargin, 8px));
				margin-left: calc(-1 * var(--SKINS_submenuMargin, 8px))
			}
			
			._3rKL6 ._3Cpo0 {
				background-color: rgba(var(--bg, var(--color_11)), var(--alpha-bg, 1));
				height: var(--item-height, 50px);
				transition: var(--itemBGColorTrans, background-color .4s ease 0s)
			}
			
			._3rKL6 ._3Cpo0.zLOeC>._16rQy>._3VyKd {
				cursor: default
			}
			
			._3rKL6 ._3Cpo0._3MLhF {
				background-color: rgba(var(--bgs, var(--color_15)), var(--alpha-bgs, 1))
			}
			
			._3rKL6 ._3Cpo0._3MLhF>._16rQy>._3VyKd {
				color: rgb(var(--txts, var(--color_13)))
			}
			
			._3rKL6 ._3Cpo0.M1VN5>._3YiKB {
				visibility: visible
			}
			
			._3rKL6 ._3Cpo0.M1VN5:not(.zLOeC) {
				background-color: rgba(var(--bgh, var(--color_15)), var(--alpha-bgh, 1))
			}
			
			._3rKL6 ._3Cpo0.M1VN5:not(.zLOeC)>._16rQy>._3VyKd {
				color: rgb(var(--txth, var(--color_13)))
			}
			
			._3rKL6 ._3YiKB ._3Cpo0 {
				background-color: rgba(var(--SKINS_bgSubmenu, var(--color_11)), var(--alpha-SKINS_bgSubmenu, 1))
			}
			
			._3rKL6 ._3YiKB .XOxx5 ._3Cpo0 {
				border-radius: 0
			}
			
			._3rKL6 .XOxx5:first-child ._3Cpo0 {
				border-radius: var(--rd, 0);
				border-bottom-left-radius: 0;
				border-bottom-right-radius: 0
			}
			
			._3rKL6 .XOxx5:last-child ._3Cpo0 {
				border-radius: var(--rd, 0);
				border-top-left-radius: 0;
				border-top-right-radius: 0;
				border-bottom: 0 solid transparent
			}
			
			._3rKL6 ._3VyKd {
				box-sizing: border-box;
				cursor: pointer;
				color: rgb(var(--txt, var(--color_15)));
				font: var(--fnt, var(--font_1));
				position: relative;
				display: flex;
				justify-content: var(--text-align, flex-start);
				height: 100%;
				padding-left: var(--textSpacing, 10px);
				padding-right: var(--textSpacing, 10px);
				white-space: nowrap
			}
			
			._3rKL6 ._3VyKd,
			._3rKL6 ._3VyKd:after {
				background-color: transparent;
				width: 100%
			}
			
			._3rKL6 ._3VyKd:after {
				cursor: default;
				content: " ";
				height: var(--sepw, 1px);
				position: absolute;
				top: 100%;
				left: 0
			}
			
			._3rKL6 .XOxx5 ._3Cpo0 ._3VyKd {
				line-height: var(--item-height, 50px)
			}
			
			._3rKL6 ._3YiKB ._3VyKd {
				font: var(--SKINS_fntSubmenu, var(--font_1))
			}
			</style>
			<style data-href="https://static.parastorage.com/services/editor-elements/dist/LoginSocialBar.afc6547d.chunk.min.css">
			._1NSXQ {
				display: flex;
				align-items: center;
				box-sizing: border-box;
				background-color: rgba(var(--bg, 0, 0, 0), var(--alpha-bg, 0));
				border: var(--brw, 0) solid rgba(var(--brd, var(--color_15)), var(--alpha-brd, 1));
				border-radius: var(--rd, 0);
				box-shadow: var(--shd, 0 0 0 transparent)
			}
			
			._27KJ3 {
				display: block;
				overflow: hidden;
				flex-shrink: 0;
				padding-left: 7px;
				padding-right: 7px;
				fill: rgba(var(--fillcolor, var(--color_0)), var(--alpha-fillcolor, 1));
				fill-opacity: var(--alpha-fillcolor)
			}
			
			._27KJ3,
			._27KJ3 .c0mZI,
			._27KJ3 svg {
				width: var(--icon-size, 26px);
				height: var(--icon-size, 26px)
			}
			
			._27KJ3 .c0mZI,
			._27KJ3 svg {
				position: static
			}
			
			._27KJ3 img {
				border-radius: 50%
			}
			
			._2PFxe,
			._345YM {
				cursor: pointer;
				display: flex;
				align-items: center;
				white-space: nowrap;
				padding-top: 6px;
				padding-bottom: 6px;
				position: relative;
				min-width: 0
			}
			
			._2PFxe,
			._345YM,
			._345YM ._11T5N {
				padding-left: 7px;
				padding-right: 7px;
				color: rgb(var(--txt, var(--color_18)));
				font: var(--fnt, var(--font_8))
			}
			
			._345YM ._11T5N {
				overflow: hidden;
				text-overflow: ellipsis;
				min-width: 60px
			}
			
			._345YM ._1-aWG {
				padding-left: 7px;
				padding-right: 7px
			}
			
			._345YM ._1-aWG path {
				fill: rgb(var(--txt, var(--color_18)))
			}
			
			._345YM:hover ._11T5N {
				color: rgb(var(--txth, var(--color_17)))
			}
			
			._345YM:hover ._1-aWG path {
				fill: rgb(var(--txth, var(--color_17)))
			}
			
			._2PFxe {
				border-radius: var(--rd, 0)
			}
			
			._2PFxe span {
				padding-left: 7px;
				padding-right: 7px
			}
			
			._2PFxe:hover span {
				opacity: .7
			}
			
			._3c5D0.N-2-- ._345YM {
				padding-left: 0
			}
			
			._3c5D0._1rJBD ._345YM {
				padding-right: 0
			}
			
			.o_DnN {
				display: flex;
				flex-shrink: 0;
				padding-top: 6px;
				padding-bottom: 6px
			}
			
			.o_DnN ._3DxZO {
				position: relative
			}
			
			.o_DnN ._3DxZO,
			.o_DnN ._3DxZO svg {
				width: var(--icon-size, 26px);
				height: var(--icon-size, 26px)
			}
			
			.o_DnN ._3DxZO svg {
				fill: rgba(var(--fillcolor, var(--color_0)), var(--alpha-fillcolor, 1));
				fill-opacity: var(--alpha-fillcolor)
			}
			
			.o_DnN.ElWPB {
				padding-left: 14px;
				padding-right: 3px
			}
			
			.o_DnN.ElWPB ._3DxZO:not(:last-child) {
				margin-right: 10px
			}
			
			.o_DnN.ElWPB ._2z7UX {
				left: 50%
			}
			
			.o_DnN._3BPVB {
				padding-left: 3px;
				padding-right: 14px
			}
			
			.o_DnN._3BPVB ._3DxZO:not(:last-child) {
				margin-left: 10px
			}
			
			.o_DnN._3BPVB ._2z7UX {
				right: 50%
			}
			
			._2z7UX {
				display: block;
				background-color: rgba(var(--badge-bg, 226, 28, 33), var(--alpha-badge-bg, 1));
				color: rgb(var(--badge-txt, var(--color_11)));
				border-radius: 10px;
				position: absolute;
				top: 0;
				pointer-events: none;
				text-align: center;
				height: 18px;
				line-height: 18px;
				letter-spacing: 1px;
				padding-left: 6px;
				padding-right: 6px
			}
			
			._1Bnqh {
				opacity: 0;
				cursor: pointer;
				width: 100%;
				height: 100%;
				left: 0;
				font-size: var(--fnt-size-dd, 15px)
			}
			
			._1Bnqh,
			.w4_Uk {
				position: absolute
			}
			
			.w4_Uk {
				display: none;
				top: calc(100% + var(--brw, 0px));
				padding: 10px 0;
				z-index: 99999;
				background-color: rgba(var(--bg-dd, var(--color_11)), var(--alpha-bg-dd, 1));
				border: var(--brw-dd, 1px) solid rgba(var(--brd-dd, var(--color_15)), var(--alpha-brd-dd, 1));
				box-sizing: border-box;
				border-radius: var(--rd-dd, 0);
				box-shadow: var(--shd-dd, 0 0 0 transparent);
				font: var(--fnt, var(--font_8));
				font-size: var(--fnt-size-dd, 15px);
				min-width: 100px;
				max-width: 300px
			}
			
			.w4_Uk.Gcvfr {
				display: block
			}
			
			.w4_Uk hr {
				margin: 5px 20px;
				opacity: .4
			}
			
			._1SdeY {
				--force-state-metadata: selected
			}
			
			._29xft {
				color: rgb(var(--txt-dd, var(--color_15)));
				cursor: pointer;
				padding: 0 20px;
				display: flex;
				line-height: 260%;
				border-radius: var(--rd-dd, 0)
			}
			
			._29xft._1SdeY {
				color: rgb(var(--txt-slct-dd, var(--color_18)))
			}
			
			._29xft:hover {
				color: rgb(var(--txth-dd, var(--color_14)))
			}
			
			._29xft ._1g7pK {
				overflow: hidden;
				text-overflow: ellipsis;
				white-space: nowrap
			}
			
			._29xft ._3niRF {
				opacity: .6
			}
			
			._1mEpJ {
				right: 14px
			}
			
			._1mEpJ ._3niRF {
				padding-left: 12px
			}
			
			._1_l7F {
				left: 14px
			}
			
			._1_l7F ._3niRF {
				padding-right: 12px
			}
			</style>
			<style data-href="https://static.parastorage.com/services/editor-elements/dist/bootstrap-components-responsive.4c4fb783.chunk.min.css">
			._1BLK_ {
				overflow-x: hidden
			}
			
			._1BLK_ ._3mdqs {
				display: flex;
				flex-direction: column;
				height: 100%;
				width: 100%
			}
			
			._1BLK_ ._3mdqs ._151Fq {
				flex: 1
			}
			
			._1BLK_ ._3mdqs ._2qN6d {
				width: calc(100% - (var(--menuTotalBordersX, 0px)));
				height: calc(100% - (var(--menuTotalBordersY, 0px)));
				white-space: nowrap;
				overflow: visible
			}
			
			._1BLK_ ._3mdqs ._2qN6d .AEGjP {
				display: inline-block
			}
			
			._1BLK_ ._3mdqs ._2qN6d ._3c4V9 {
				display: block;
				width: 100%
			}
			
			._1BLK_ ._3FVLO {
				z-index: 99999;
				display: block;
				opacity: 1
			}
			
			._1BLK_ ._3FVLO ._37sAS {
				overflow: visible;
				display: inherit;
				white-space: nowrap;
				width: auto;
				visibility: inherit
			}
			
			._1BLK_ ._3FVLO._3Pev9 {
				transition: visibility;
				transition-delay: .2s;
				visibility: visible
			}
			
			._1BLK_ ._3FVLO .hfpL0 {
				display: inline-block
			}
			
			._1BLK_ ._2FZTJ {
				display: none
			}
			
			._3w6CQ>nav {
				top: 0;
				right: 0;
				bottom: 0;
				left: 0
			}
			
			._3w6CQ ._2qN6d,
			._3w6CQ ._3FVLO,
			._3w6CQ>nav {
				position: absolute
			}
			
			._3w6CQ ._3FVLO {
				visibility: hidden;
				margin-top: 7px
			}
			
			._3w6CQ ._3FVLO[data-dropMode=dropUp] {
				margin-top: 0;
				margin-bottom: 7px
			}
			
			._3w6CQ ._37sAS {
				background-color: rgba(var(--bgDrop, var(--color_11)), var(--alpha-bgDrop, 1));
				border-radius: var(--rd, 0);
				box-shadow: var(--shd, 0 1px 4px rgba(0, 0, 0, .6))
			}
			
			._1VAYf,
			._14VId {
				height: 100%;
				width: auto;
				position: relative;
				box-sizing: border-box;
				overflow: visible
			}
			
			._1VAYf[data-state~=header] a,
			._1VAYf[data-state~=header] div,
			._14VId[data-state~=header] a,
			._14VId[data-state~=header] div {
				cursor: default!important
			}
			
			._1VAYf .인라인블록크기,
			._14VId .인라인블록크기 {
				display: inline-block;
				height: 100%;
				width: 100%
			}
			
			._14VId {
				display: inline-block;
				cursor: pointer;
				font: var(--fnt, var(--font_1))
			}
			
			._14VId .메뉴2스타일 {
				padding: 0 var(--pad, 5px)
			}
			
			._14VId .메뉴_스타일 {
				display: inline-block;
				padding: 0 10px;
				color: rgb(var(--txt, var(--color_15)));
				transition: var(--trans, color .4s ease 0s)
			}
			
			._14VId[data-state~=drop] {
				width: 100%;
				display: block
			}
			
			._14VId[data-state~=drop] .메뉴_스타일 {
				padding: 0 .5em
			}
			
			._14VId[data-state~=link]:hover .메뉴_스타일,
			._14VId[data-state~=over] .메뉴_스타일 {
				color: rgb(var(--txth, var(--color_14)));
				transition: var(--trans, color .4s ease 0s)
			}
			
			._14VId[data-state~=selected]
			/*! remove when this file is updated or https://github.com/wix/yoshi/issues/2689 is resolved */
			
			._3WQKx {
				overflow: hidden;
				background-color: rgba(var(--backgroundColor, var(--color_8)), var(--alpha-backgroundColor, 1));
				border-color: rgba(var(--borderColor, var(--color_8)), var(--alpha-borderColor, 1));
				border-width: var(--borderWidth, 0);
				border-style: solid;
				border-radius: var(--cornerRadius, 0);
				box-shadow: var(--boxShadow, none)
			}
			
			._3WQKx wix-image {
				position: absolute;
				top: 0;
				bottom: 0;
				left: 0;
				right: 0;
				opacity: var(--mediaOpacity, 1)
			}
			
			._3WQKx img {
				width: 100%;
				height: 100%
			}
			
			._7STJN .PpEzW .TlAtT {
				display: var(--item-display);
				width: var(--item-size);
				height: var(--item-size)
			}
			
			._7STJN .PpEzW .TlAtT:not(:last-child) {
				margin: var(--item-margin)
			}
			
			._7STJN .PpEzW .TlAtT .I0LrY {
				display: block
			}
			
			._7STJN .PpEzW .TlAtT .I0LrY ._3YBJ2 {
				width: var(--item-size);
				height: var(--item-size)
			}
			
			._7STJN {
				display: table
			}
			
			._7STJN .PpEzW {
				display: flex;
				flex-direction: var(--flex-direction)
			}
			
			._3QVX_ {
				background-color: rgba(var(--bg, var(--color_11)), var(--alpha-bg, 1))
			}
			
			.b2Sfd {
				transition-delay: var(--transition-delay);
				transition-duration: var(--transition-duration);
				transition-timing-function: var(--transition-timing-function);
				transition-property: var(--transition-property)
			}
			
			.b2Sfd._3kfn- {
				transform: var(--scrolled-transform)
			}
			
			.b2Sfd._13h-i {
				opacity: var(--scrolled-opacity)
			}
			
			.b2Sfd._30mX3 {
				transition-delay: 0s
			}
			
			._2mKjd {
				background-color: rgba(var(--bg, var(--color_11)), var(--alpha-bg, 1));
				transition-delay: var(--transition-delay);
				transition-duration: var(--transition-duration);
				transition-timing-function: var(--transition-timing-function);
				transition-property: var(--transition-property)
			}
			
			._192ST._2mKjd {
				background-color: rgba(var(--bg-scrl, var(--color_11)), var(--alpha-bg-scrl, 1))
			}
			
			._1xBzm {
				--container-corvid-border-color: rgba(var(--brd, var(--color_15)), var(--alpha-brd, 1));
				--container-corvid-border-size: var(--brw, 1px);
				--container-corvid-background-color: rgba(var(--bg, var(--color_11)), var(--alpha-bg, 1))
			}
			
			._3NuDC {
				border: var(--container-corvid-border-width, var(--brw, 1px)) solid var(--container-corvid-border-color, rgba(var(--brd, var(--color_15)), var(--alpha-brd, 1)));
				background-color: var(--container-corvid-background-color, rgba(var(--bg, var(--color_11)), var(--alpha-bg, 1)));
				border-radius: var(--rd, 5px);
				box-shadow: var(--shd, 0 1px 4px rgba(0, 0, 0, .6));
				position: absolute;
				top: 0;
				right: 0;
				bottom: 0;
				left: 0
			}
			
			._2wjTQ {
				-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
				opacity: 0;
				visibility: hidden
			}
			
			._2wjTQ._3bPEB {
				opacity: 1;
				visibility: visible
			}
			
			._2wjTQ[data-undisplayed=true] {
				display: none
			}
			
			._2wjTQ:not([data-is-mesh]) .-r5tc,
			._2wjTQ:not([data-is-mesh]) ._3KPTS {
				position: absolute;
				top: 0;
				right: 0;
				bottom: 0;
				left: 0
			}
			
			._1ACUw {
				height: 100%;
				width: 100%;
				position: fixed;
				top: 0;
				left: 0;
				background-color: rgba(var(--bg, var(--color_15)), var(--alpha-bg, 1));
				display: initial;
				opacity: 0
			}
			
			._1ACUw._11nYb {
				display: none
			}
			
			body.모바일최적화 ._1ACUw {
				height: 100vh;
				width: var(--screen-width)
			}
			
			body.모바일최적화 ._1ACUw,
			body.모바일최적화 ._2wjTQ._11nYb {
				left: calc((100% - var(--screen-width)) / 2)
			}
			
			body.모바일최적화 ._2wjTQ.tPkHi,
			body:not(.모바일최적화) ._2wjTQ.tPkHi {
				height: 100vh
			}
			
			._1KE0E.tPkHi,
			._1KE0E.tPkHi>:first-child {
				height: calc(var(--menu-height) - var(--wix-ads-height))
			}
			
			._1KE0E.tPkHi>:first-child {
				margin-top: var(--wix-ads-height)
			}
			
			._2wjTQ.tPkHi {
				top: 0
			}
			
			._2wjTQ._2RcFC {
				z-index: calc(var(--above-all-z-index) - 1)
			}
			
			._3bezk {
				-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
				opacity: 0;
				visibility: hidden
			}
			
			._3bezk.bwoU- {
				opacity: 1;
				visibility: visible
			}
			
			._3bezk[data-undisplayed=true] {
				display: none
			}
			
			._3bezk:not([data-is-mesh]) ._1tsjP,
			._3bezk:not([data-is-mesh]) ._2eYka {
				position: absolute;
				top: 0;
				right: 0;
				bottom: 0;
				left: 0
			}
			
			.CcDeJ {
				height: 100%;
				width: 100%;
				position: fixed;
				top: 0;
				left: 0;
				background-color: rgba(var(--bg, var(--color_15)), var(--alpha-bg, 1));
				display: initial;
				opacity: 0
			}
			
			.CcDeJ.d1eWu {
				display: none
			}
			
			body.모바일최적화 .CcDeJ {
				height: 100vh;
				width: var(--screen-width)
			}
			
			body.모바일최적화 ._3bezk.d1eWu,
			body.모바일최적화 .CcDeJ {
				left: calc((100% - var(--screen-width)) / 2)
			}
			
			body.모바일최적화 ._3bezk._3o_Lz,
			body:not(.모바일최적화) ._3bezk._3o_Lz {
				height: 100vh
			}
			
			._2iV2q._3o_Lz,
			._2iV2q._3o_Lz>:first-child {
				height: calc(var(--menu-height) - var(--wix-ads-height))
			}
			
			._2iV2q._3o_Lz>:first-child {
				margin-top: var(--wix-ads-height)
			}
			
			._3bezk._3o_Lz {
				top: 0
			}
			
			.cf8n_ {
				position: absolute;
				top: 0;
				right: 0;
				bottom: 0;
				left: 0;
				background-color: rgba(var(--containerBackground, var(--color_11)), var(--alpha-containerBackground, 1))
			}
			
			._2iV2q {
				height: 100%
			}
			
			._3V5_4 {
				pointer-events: none!important
			}
			
			._3V5_4>* {
				pointer-events: auto
			}
			
			.AgPkq ._1htNC {
				position: absolute;
				top: 0;
				right: 0;
				bottom: 0;
				left: 0;
				overflow: hidden;
				background-color: rgba(var(--bg, var(--color_11)), var(--alpha-bg, 1))
			}
			
			._7b77h {
				display: contents
			}
			</style>
			<style data-href="https://static.parastorage.com/services/editor-elements/dist/FreemiumBannerDesktop.08fe5004.chunk.min.css">
			@font-face {
				font-display: swap;
				font-family: wixFreemiumFontW01-35Thin;
				src: url(../../static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/56be84de-9d60-4089-8df0-0ea6ec786b84.eot#iefix);
				src: url(//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/56be84de-9d60-4089-8df0-0ea6ec786b84.eot#iefix) format("eot"), url(//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/50d35bbc-dfd4-48f1-af16-cf058f69421d.woff) format("woff"), url(//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/278bef59-6be1-4800-b5ac-1f769ab47430.ttf) format("truetype"), url(//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/2e309b1b-08b8-477f-bc9e-7067cf0af0b3.svg#2e309b1b-08b8-477f-bc9e-7067cf0af0b3) format("svg")
			}
			
			@font-face {
				font-display: swap;
				font-family: wixFreemiumFontW10-35Thin;
				src: url(//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/93b6bf6a-418e-4a8f-8f79-cb9c99ef3e32.eot#iefix);
				src: url(//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/93b6bf6a-418e-4a8f-8f79-cb9c99ef3e32.eot#iefix) format("eot"), url(//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/c881c21b-4148-4a11-a65d-f35e42999bc8.woff) format("woff"), url(//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/03634cf1-a9c9-4e13-b049-c90d830423d4.ttf) format("truetype"), url(//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/1bc99c0a-298b-46f9-b325-18b5e5169795.svg#1bc99c0a-298b-46f9-b325-18b5e5169795) format("svg")
			}
			
			._2ny4c {
				width: 100%
			}
			
			._2ny4c._3cP_8 {
				display: none
			}
			
			._2ny4c._2NZB- {
				display: block;
				visibility: visible
			}
			
			._2ny4c .zzFVa {
				direction: rtl
			}
			
			._2ny4c .상단시작2버튼 {
				direction: ltr
			}
			
			._2ny4c._3jGoI {
				z-index: var(--above-all-z-index);
				position: fixed;
				top: 0
			}
			
			._2ny4c ._3hdQ6 {
				box-sizing: border-box;
				background: #eff1f2;
				display: flex;
				justify-content: center;
				align-items: center;
				border-bottom: 3px solid #a0138e;
				width: 100%;
				height: 50px
			}
			
			._2ny4c ._3hdQ6._1ID94 {
				background-color: red;
				border: none
			}
			
			._2ny4c ._3hdQ6>.상단바 {
				display: flex;
				align-items: center
			}
			
			._2ny4c ._3hdQ6>.상단바 .본사이트 {
				font-family: 'Noto Sans KR', sans-serif;
				font-size: 14px;
				color: #20303c;
				line-height: 24px;
				flex-shrink: 0
			}
			
			._2ny4c ._3hdQ6>.상단바 .본사이트 .윅스로고 {
				fill: #20303c;
				width: 36px;
				vertical-align: middle;
				padding-bottom: 6px;
				height: 16px
			}
			
			._2ny4c ._3hdQ6> {
				fill: #fc0
			}
			
			._2ny4c ._3hdQ6>.상단바 .본사이트 .점컴버튼 {
				color: #20303c
			}
			
			._2ny4c ._3hdQ6>.상단바 .상단시작버튼 {
				font-family: 'Noto Sans KR', sans-serif;
				font-size: 14px;
				color: #a0138e;
				border: 1px solid #a0138e;
				display: inline-flex;
				width: 112px;
				height: 35px;
				justify-content: center;
				align-items: center;
				border-radius: 17px;
				flex-shrink: 0;
				text-align: center
			}
			
			._2ny4c ._3hdQ6>.상단바 .상단시작버튼.상단시작2버튼 {
				margin-left: 6px
			}
			
			._2ny4c ._3hdQ6>.상단바 .상단시작버튼.zzFVa {
				margin-right: 6px
			}
			
			._2ny4c ._3hdQ6:not(._1ID94):hover {
				cursor: pointer;
				background: #fff
			}
			
			._2ny4c ._3hdQ6:not(._1ID94):hover .상단시작버튼 {
				color: #fff;
				background-color: #a0138e
			}
			</style>
			<style data-href="https://static.parastorage.com/services/editor-elements/dist/SkipToContentButton.49643a37.chunk.min.css">
			@font-face {
				font-display: swap;
				font-family: wixFreemiumFontW01-65Medi;
				font-weight: 700;
				src: url(../../static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/07fe0fec-b63f-4963-8ee1-535528b67fdb.eot#iefix);
				src: url(//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/07fe0fec-b63f-4963-8ee1-535528b67fdb.eot#iefix) format("eot"), url(//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/60be5c39-863e-40cb-9434-6ebafb62ab2b.woff) format("woff"), url(//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/4c6503c9-859b-4d3b-a1d5-2d42e1222415.ttf) format("truetype"), url(//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/36c182c6-ef98-4021-9b0d-d63122c2bbf5.svg#36c182c6-ef98-4021-9b0d-d63122c2bbf5) format("svg")
			}
			
			.FZwC3 {
				position: absolute;
				top: 60px;
				left: 50%;
				pointer-events: none;
				margin-left: -94px;
				z-index: 9999;
				background: #fff;
				color: #116dff;
				font-family: 'Noto Sans KR', sans-serif;
				font-size: 14px;
				border-radius: 24px;
				padding: 0 24px 0 24px;
				width: 0;
				height: 0;
				opacity: 0;
				cursor: pointer
			}
			
			.FZwC3:focus {
				border: 2px solid;
				opacity: 1;
				width: auto;
				height: 40px;
				pointer-events: auto
			}
			</style>
			<style data-href="https://static.parastorage.com/services/wix-thunderbolt/dist/tpa-components.e2908e66.chunk.min.css">
			._2JOHk,
			._49_rs {
				overflow: hidden
			}
			
			._49_rs {
				position: absolute;
				width: 100%;
				height: 100%
			}
			
			._49_rs:-webkit-full-screen {
				min-height: auto!important
			}
			
			._49_rs:-ms-fullscreen {
				min-height: auto!important
			}
			
			._49_rs:fullscreen {
				min-height: auto!important
			}
			
			._1DEc4 {
				visibility: hidden
			}
			
			._1i2vY,
			.M0Zte {
				position: absolute;
				top: 0;
				left: 0;
				color: #373737;
				width: 100%;
				height: 100%
			}
			
			.M0Zte {
				text-align: center;
				font-size: 13px
			}
			
			._1oXLC,
			._3H-3L {
				-webkit-animation: _3SHsR 1s linear 1ms infinite;
				animation: _3SHsR 1s linear 1ms infinite;
				height: 30px;
				left: 50%;
				margin-left: -15px;
				margin-top: -15px;
				overflow: hidden;
				position: absolute;
				top: 50%;
				transform-origin: 100% 50%;
				width: 15px
			}
			
			._3H-3L {
				margin-top: -45px
			}
			
			._1oXLC:before,
			._3H-3L:before {
				color: #7fccf7
			}
			
			._1oXLC:after,
			._1oXLC:before,
			._3H-3L:after,
			._3H-3L:before {
				content: "";
				top: 0;
				left: 0;
				right: -100%;
				bottom: 0;
				border: 3px solid currentColor;
				border-color: currentColor transparent transparent currentColor;
				border-radius: 50%;
				position: absolute;
				transform: rotate(-45deg);
				-webkit-animation: _2DcPa .5s linear 1ms infinite alternate;
				animation: _2DcPa .5s linear 1ms infinite alternate
			}
			
			._1oXLC:after,
			._3H-3L:after {
				color: #3899ec;
				opacity: 0
			}
			
			._1oXLC._2k7oQ:before,
			._2k7oQ._3H-3L:before {
				color: #f0f0f0
			}
			
			._1oXLC._2k7oQ:after,
			._2k7oQ._3H-3L:after {
				color: #dcdcdc
			}
			
			@-webkit-keyframes _2DcPa {
				to {
					opacity: 1;
					transform: rotate(115deg)
				}
			}
			
			@keyframes _2DcPa {
				to {
					opacity: 1;
					transform: rotate(115deg)
				}
			}
			
			@-webkit-keyframes _3SHsR {
				0% {
					-webkit-animation-timing-function: ease-out;
					animation-timing-function: ease-out;
					transform: rotate(180deg)
				}
				45% {
					transform: rotate(198deg)
				}
				55% {
					transform: rotate(234deg)
				}
				to {
					transform: rotate(540deg)
				}
			}
			
			@keyframes _3SHsR {
				0% {
					-webkit-animation-timing-function: ease-out;
					animation-timing-function: ease-out;
					transform: rotate(180deg)
				}
				45% {
					transform: rotate(198deg)
				}
				55% {
					transform: rotate(234deg)
				}
				to {
					transform: rotate(540deg)
				}
			}
			</style>
			<title>가이드 | 찍GO</title>
			<link rel="canonical" href="guide.html" />
			<meta property="og:title" content="가이드 | 찍GO" />
			<meta property="og:url" content="https://jemilykoo.wixsite.com/website/guide" />
			<meta property="og:site_name" content="찍GO" />
			<meta property="og:type" content="website" />
			<meta name="twitter:card" content="summary_large_image" />
			<meta name="twitter:title" content="가이드 | 찍GO" /> </head>

		<body class=''>
			<script type="text/javascript">
			var bodyCacheable = true;
			var exclusionReason = {
				"shouldRender": true,
				"forced": false
			};
			var ssrInfo = {
				"renderBodyTime": 564,
				"renderTimeStamp": 1624430115949
			}
			</script>
			<script>
			window.clientSideRender = false;
			</script>
			<!--pageHtmlEmbeds.bodyStart start-->
			<script type="wix/htmlEmbeds" id="pageHtmlEmbeds.bodyStart start"></script>
			<script type="wix/htmlEmbeds" id="pageHtmlEmbeds.bodyStart end"></script>
			<!--pageHtmlEmbeds.bodyStart end-->
			<script id="wix-first-paint">
			if(window.ResizeObserver && (!window.PerformanceObserver || !PerformanceObserver.supportedEntryTypes || PerformanceObserver.supportedEntryTypes.indexOf('paint') === -1)) {
				new ResizeObserver(function(entries, observer) {
					entries.some(function(entry) {
						var contentRect = entry.contentRect;
						if(contentRect.width > 0 && contentRect.height > 0) {
							requestAnimationFrame(function(now) {
								window.wixFirstPaint = now;
								dispatchEvent(new CustomEvent('wixFirstPaint'));
							});
							observer.disconnect();
							return true;
						}
					});
				}).observe(document.body);
			}
			</script>
			<pages-css id="pages-css">
				<style id="css_마스터페이지">
				:root {
					--color_0: 255, 255, 255;
					--color_1: 0, 0, 0;
					--color_2: 25, 54, 105;
					--color_3: 25, 25, 25;
					--color_4: 247, 247, 247;
					--color_5: 38, 82, 156;
					--color_6: 255, 255, 255;
					--color_7: 191, 191, 191;
					--color_8: 128, 128, 128;
					--color_9: 64, 64, 64;
					--color_10: 0, 0, 0;
					--color_11: 255, 255, 255;
					--color_12: 191, 191, 191;
					--color_13: 128, 128, 128;
					--color_14: 64, 64, 64;
					--color_15: 0, 0, 0;
					--color_16: 153, 181, 231;
					--color_17: 50, 107, 206;
					--color_18: 25, 54, 105;
					--color_19: 17, 36, 70;
					--color_20: 8, 18, 35;
					--color_21: 209, 209, 209;
					--color_22: 163, 163, 163;
					--color_23: 117, 117, 117;
					--color_24: 71, 71, 71;
					--color_25: 25, 25, 25;
					--color_26: 251, 251, 251;
					--color_27: 247, 247, 247;
					--color_28: 185, 185, 185;
					--color_29: 124, 124, 124;
					--color_30: 62, 62, 62;
					--color_31: 128, 164, 224;
					--color_32: 38, 82, 156;
					--color_33: 28, 61, 117;
					--color_34: 19, 41, 78;
					--color_35: 10, 20, 39;
					--font_0: 700 22px/1.41em 'Noto Sans KR', sans-serif;
					--font_1: 500 14px/1.79em 'Noto Sans KR', sans-serif;
					--font_2: 700 28px/1.375em 'Noto Sans KR', sans-serif;
					--font_3: 700 88px/1.2em 'Noto Sans KR', sans-serif;
					--font_4: 700 72px/1.25em 'Noto Sans KR', sans-serif;
					--font_5: 700 50px/1.34em 'Noto Sans KR', sans-serif;
					--font_6: 700 40px/1.35em 'Noto Sans KR', sans-serif;
					--font_7: 300 20px/1.67em 'Noto Sans KR', sans-serif;
					--font_8: 500 18px/1.75em 'Noto Sans KR', sans-serif;
					--font_9: 300 15px/1.875em 'Noto Sans KR', sans-serif;
					--font_10: 500 14px/1.79em 'Noto Sans KR', sans-serif;
					--wix-ads-height: 50px;
					--wix-ads-top-height: 50px;
					--site-width: 980px;
					--above-all-z-index: 100000;
					--minViewportSize: 320;
					--maxViewportSize: 1920
				}
				
				.font_0 {
					font: var(--font_0);
					color: rgb(var(--color_15))
				}
				
				.font_1 {
					font: var(--font_1);
					color: rgb(var(--color_15))
				}
				
				.font_2 {
					font: var(--font_2);
					color: rgb(var(--color_15))
				}
				
				.font_3 {
					font: var(--font_3);
					color: rgb(var(--color_15))
				}
				
				.font_4 {
					font: var(--font_4);
					color: rgb(var(--color_15))
				}
				
				.font_5 {
					font: var(--font_5);
					color: rgb(var(--color_15))
				}
				
				.font_6 {
					font: var(--font_6);
					color: rgb(var(--color_15))
				}
				
				.font_7 {
					font: var(--font_7);
					color: rgb(var(--color_15))
				}
				
				.font_8 {
					font: var(--font_8);
					color: rgb(var(--color_15))
				}
				
				.font_9 {
					font: var(--font_9);
					color: rgb(var(--color_15))
				}
				
				.font_10 {
					font: var(--font_10);
					color: rgb(var(--color_15))
				}
				
				.color_0 {
					color: rgb(var(--color_0))
				}
				
				.color_1 {
					color: rgb(var(--color_1))
				}
				
				.color_2 {
					color: rgb(var(--color_2))
				}
				
				.color_3 {
					color: rgb(var(--color_3))
				}
				
				.color_4 {
					color: rgb(var(--color_4))
				}
				
				.color_5 {
					color: rgb(var(--color_5))
				}
				
				.color_6 {
					color: rgb(var(--color_6))
				}
				
				.color_7 {
					color: rgb(var(--color_7))
				}
				
				.color_8 {
					color: rgb(var(--color_8))
				}
				
				.color_9 {
					color: rgb(var(--color_9))
				}
				
				.color_10 {
					color: rgb(var(--color_10))
				}
				
				.color_11 {
					color: rgb(var(--color_11))
				}
				
				.color_12 {
					color: rgb(var(--color_12))
				}
				
				.color_13 {
					color: rgb(var(--color_13))
				}
				
				.color_14 {
					color: rgb(var(--color_14))
				}
				
				.color_15 {
					color: rgb(var(--color_15))
				}
				
				.color_16 {
					color: rgb(var(--color_16))
				}
				
				.color_17 {
					color: rgb(var(--color_17))
				}
				
				.color_18 {
					color: rgb(var(--color_18))
				}
				
				.color_19 {
					color: rgb(var(--color_19))
				}
				
				.color_20 {
					color: rgb(var(--color_20))
				}
				
				.color_21 {
					color: rgb(var(--color_21))
				}
				
				.color_22 {
					color: rgb(var(--color_22))
				}
				
				.color_23 {
					color: rgb(var(--color_23))
				}
				
				.color_24 {
					color: rgb(var(--color_24))
				}
				
				.color_25 {
					color: rgb(var(--color_25))
				}
				
				.color_26 {
					color: rgb(var(--color_26))
				}
				
				.color_27 {
					color: rgb(var(--color_27))
				}
				
				.color_28 {
					color: rgb(var(--color_28))
				}
				
				.color_29 {
					color: rgb(var(--color_29))
				}
				
				.color_30 {
					color: rgb(var(--color_30))
				}
				
				.color_31 {
					color: rgb(var(--color_31))
				}
				
				.color_32 {
					color: rgb(var(--color_32))
				}
				
				.color_33 {
					color: rgb(var(--color_33))
				}
				
				.color_34 {
					color: rgb(var(--color_34))
				}
				
				.color_35 {
					color: rgb(var(--color_35))
				}
				
				#SITE_CONTAINER.focus-ring-active:not(.has-custom-focus):not(.ignore-focus):focus,
				#SITE_CONTAINER.focus-ring-active:not(.has-custom-focus):not(.ignore-focus):focus ~ .wixSdkShowFocusOnSibling {
					box-shadow: 0 0 0 1px #ffffff, 0 0 0 3px #116dff !important;
					z-index: 999
				}
				
				[data-mesh-id=SOSP_CONTAINER_CUSTOM_IDinlineContent] {
					height: auto;
					width: 291px
				}
				
				[data-mesh-id=SOSP_CONTAINER_CUSTOM_IDinlineContent-gridContainer] {
					position: static;
					display: grid;
					height: auto;
					width: 100%;
					min-height: auto;
					grid-template-rows: min-content 1fr;
					grid-template-columns: 100%
				}
				
				[data-mesh-id=SOSP_CONTAINER_CUSTOM_IDinlineContent-gridContainer] > [id="comp-kpndp2z9"] {
					position: relative;
					margin: 60px 0px 30px 0;
					left: 20px;
					grid-area: 1 / 1 / 2 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=SOSP_CONTAINER_CUSTOM_IDinlineContent-gridContainer] > [id="comp-kpndp7iz"] {
					position: relative;
					margin: 0px 0px 10px 0;
					left: 20px;
					grid-area: 2 / 1 / 3 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=SITE_HEADERinlineContent] {
					height: auto;
					width: 100%
				}
				
				[data-mesh-id=SITE_HEADERinlineContent-gridContainer] {
					position: static;
					display: grid;
					height: auto;
					width: 100%;
					min-height: auto;
					grid-template-rows: 1fr;
					grid-template-columns: 100%
				}
				
				[data-mesh-id=SITE_HEADERinlineContent-gridContainer] > [id="comp-kpqfx1me"] {
					position: relative;
					margin: 30px 0px 30px calc((100% - 980px) * 0.5);
					left: 0px;
					grid-area: 1 / 1 / 2 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=comp-kpqfx1mginlineContent] {
					height: auto;
					width: 100%
				}
				
				[data-mesh-id=comp-kpqfx1mginlineContent-gridContainer] {
					position: static;
					display: grid;
					height: auto;
					width: 100%;
					min-height: auto;
					grid-template-rows: min-content 1fr;
					grid-template-columns: 100%
				}
				
				[data-mesh-id=comp-kpqfx1mginlineContent-gridContainer] > [id="comp-kpqfx1mh"] {
					position: relative;
					margin: 1px 0px -2px calc((100% - 151px) * 0);
					left: 20px;
					grid-area: 1 / 1 / 2 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=comp-kpqfx1mginlineContent-gridContainer] > [id="comp-kpqfx1mh1"] {
					position: relative;
					margin: 0px 0px 0px calc((100% - 151px) * 0);
					left: 20px;
					grid-area: 2 / 1 / 3 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=comp-kpqfx1miinlineContent] {
					height: auto;
					width: 100%
				}
				
				[data-mesh-id=comp-kpqfx1miinlineContent-gridContainer] {
					position: static;
					display: grid;
					height: auto;
					width: 100%;
					min-height: auto;
					grid-template-rows: 1fr;
					grid-template-columns: 100%
				}
				
				[data-mesh-id=comp-kpqfx1miinlineContent-gridContainer] > [id="comp-kpndp2eo"] {
					position: relative;
					margin: 10px 0px 10px calc((100% - 829px) * 1);
					left: 699px;
					grid-area: 1 / 1 / 2 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=comp-kpqfx1miinlineContent-gridContainer] > [id="comp-kpqfz361"] {
					position: relative;
					margin: 15px 0px 15px calc((100% - 829px) * 1);
					left: 97px;
					grid-area: 1 / 1 / 2 / 2;
					justify-self: start;
					align-self: start
				}
				
				[id="soapAfterPagesContainer"].page-without-sosp [data-mesh-id=soapAfterPagesContainerinlineContent] {
					height: auto;
					width: 100%;
					position: static;
					min-height: auto;
					padding-bottom: 0px;
					box-sizing: border-box
				}
				
				[id="soapAfterPagesContainer"].page-with-sosp [data-mesh-id=soapAfterPagesContainerinlineContent] {
					height: auto;
					width: 100%
				}
				
				[id="soapAfterPagesContainer"].page-with-sosp [data-mesh-id=soapAfterPagesContainerinlineContent-gridContainer] {
					position: static;
					display: grid;
					height: auto;
					width: 100%;
					min-height: auto;
					grid-template-rows: 1fr;
					grid-template-columns: 100%;
					padding-bottom: 0px;
					box-sizing: border-box
				}
				
				[id="soapAfterPagesContainer"].page-with-sosp [data-mesh-id=soapAfterPagesContainerinlineContent-gridContainer] > [id="CONTROLLER_COMP_CUSTOM_ID"] {
					position: absolute;
					top: -105px;
					left: 20px;
					margin-left: calc((100% - 980px) * 0.5)
				}
				
				[id="soapAfterPagesContainer"].page-with-sosp [data-mesh-id=soapAfterPagesContainerinlineContent-gridContainer] > [id="SOSP_CONTAINER_CUSTOM_ID"] {
					position: relative;
					margin: 60px 0px 0 calc((100% - 980px) * 0.5);
					left: 0px;
					grid-area: 1 / 1 / 2 / 2;
					justify-self: start;
					align-self: start
				}
				
				#comp-kpndooba {
					width: 370px;
					height: 86px;
					justify-self: end;
					align-self: end;
					position: absolute;
					grid-area: 1 / 1 / 2 / 2;
					pointer-events: auto
				}
				
				#마스터페이지 {
					left: 0;
					margin-left: 0;
					width: 100%;
					min-width: 980px
				}
				
				#SITE_FOOTER {
					left: 0;
					margin-left: 0;
					width: 100%;
					min-width: 980px;
					--pinned-layer-in-container: 50;
					--above-all-in-container: 49
				}
				
				#PAGES_CONTAINER {
					left: 0;
					margin-left: 0;
					width: 100%;
					min-width: 980px;
					--pinned-layer-in-container: 51;
					--above-all-in-container: 49
				}
				
				#SOSP_CONTAINER_CUSTOM_ID {
					width: 291px;
					--pinned-layer-in-container: 53;
					--above-all-in-container: 49
				}
				
				#SITE_HEADER {
					left: 0;
					margin-left: 0;
					width: 100%;
					min-width: 980px;
					z-index: 49;
					--above-all-in-container: 10000
				}
				
				#comp-kpqa5gea {
					width: 156px;
					height: 29px
				}
				
				#comp-kpqa55qh {
					width: 107px;
					height: 29px
				}
				
				#comp-kpndojdw {
					width: 304px;
					height: 26px
				}
				
				#SITE_PAGES {
					left: 0;
					margin-left: 0;
					width: 100%;
					min-width: 980px
				}
				
				#comp-kpndp2z9 {
					width: 250px;
					height: 308px
				}
				
				#comp-kpndp7iz {
					width: 250px;
					height: 401px
				}
				
				#comp-kpqfx1me {
					margin-left: auto;
					margin-right: auto;
					width: calc(100% - 60px - 60px);
					min-width: 980px
				}
				
				#comp-kpqfx1mg {
					width: 151px
				}
				
				#comp-kpqfx1mi {
					width: 829px
				}
				
				#comp-kpqfx1mh {
					width: 57px;
					height: 32px
				}
				
				#comp-kpqfx1mh1 {
					width: 131px;
					height: 29px
				}
				
				#comp-kpndp2eo {
					width: 110px;
					height: 40px
				}
				
				#comp-kpqfz361 {
					width: 606px;
					height: 30px
				}
				
				#comp-kpndooba-pinned-layer {
					z-index: calc(var(--pinned-layers-in-page, 0) + 55);
					--above-all-in-container: 10000
				}
				
				#마스터페이지.landingPage #CONTROLLER_COMP_CUSTOM_ID {
					display: none
				}
				
				#마스터페이지.landingPage #SOSP_CONTAINER_CUSTOM_ID {
					display: none
				}
				
				#마스터페이지.landingPage #SITE_HEADER {
					display: none
				}
				
				#마스터페이지.landingPage #comp-kpndooba {
					display: none
				}
				
				#마스터페이지.landingPage #SITE_FOOTER-placeholder {
					display: none
				}
				
				#마스터페이지:not(.landingPage) #PAGES_CONTAINER {
					margin-top: 0px;
					margin-bottom: 0px
				}
				
				#CONTROLLER_COMP_CUSTOM_ID {
					--pinned-layer-in-container: 52;
					--above-all-in-container: 49
				}
				
				#CONTROLLER_COMP_CUSTOM_ID {
					--alpha-bg: 1;
					--alpha -bgh: 1;
					--alpha - brd: 1;
					--alpha - brdh: 1;
					--alpha - txt: 1;
					--alpha - txth: 1;
					--bg: 61, 155, 233;
					--bgh: 43, 104, 156;
					--alpha-bgh: 1;
					--boxShadowToggleOn -shd: none;
					--brd: 43, 104, 156;
					--alpha-brd: 1;
					--brdh: 61, 155, 233;
					--alpha-brdh: 1;
					--brw: 0px;
					--fnt: 500 14px/1.4em raleway;
					--rd: 20px;
					--shd: 0 1px 4px rgba(0, 0, 0, 0.6);
					;
					--txt: 255, 255, 255;
					--alpha-txt: 1;
					--txth: 255, 255, 255;
					--alpha-txth: 1
				}
				
				#SOSP_CONTAINER_CUSTOM_ID {
					--bg: var(--color_11);
					--alpha-bg: 1;
					--shc-mutated-brightness: 128, 128, 128
				}
				
				#comp-kpqa5gea {
					min-height: 29px;
					height: auto
				}
				
				#comp-kpqa55qh {
					min-height: 29px;
					height: auto
				}
				
				#comp-kpndojdw {
					min-height: 26px;
					height: auto
				}
				
				#SITE_PAGES {
					--transition-duration: 700ms
				}
				
				#comp-kpndp7iz {
					--brw: 1px;
					--brd: var(--color_15);
					--shd: none;
					--rd: 0px;
					--sepw: 0px;
					--sep: var(--color_15);
					--itemBGColorTrans: background-color 0.4s ease 0s;
					--bgh: var(--color_11);
					--txth: var(--color_14);
					--alpha-txth: 1;
					--bgs: var(--color_11);
					--txts: var(--color_18);
					--alpha-txts: 1;
					--textSpacing: 30px;
					--bg: var(--color_11);
					--fnt: var(--font_8);
					--txt: var(--color_15);
					--alpha-txt: 1;
					--subMenuOpacityTrans: all 0.4s ease 0s;
					--SKINS_submenuBR: 0px;
					--SKINS_bgSubmenu: 255, 255, 255;
					--SKINS_fntSubmenu: var(--font_8);
					--SKINS_submenuMargin: 0px;
					--subItemAlterAlignPad: 30px;
					--separatorHeight: 0px;
					--dropdownMarginReal: 0px;
					--alpha-SKINS_bgSubmenu: 1;
					--alpha-bg: 1;
					--alpha-bgh: 1;
					--alpha-bgs: 1;
					--alpha-brd: 0.2;
					--alpha-sep: 1;
					--boxShadowToggleOn-shd: none;
					--item-height: 40px;
					--item-align: left;
					--text-align: flex-start;
					--sub-menu-open-direction-right: auto;
					--sub-menu-open-direction-left: 0;
					--separator-height-adjusted: 0px
				}
				
				#comp-kpqfx1me {
					--bg-overlay-color: transparent;
					--padding: 0px;
					--margin: 0px;
					min-width: 980px
				}
				
				#comp-kpqfx1mg {
					--bg-overlay-color: transparent;
					width: 100%;
					--column-width: 151px;
					--column-flex: 151
				}
				
				#comp-kpqfx1mi {
					--bg-overlay-color: transparent;
					width: 100%;
					--column-width: 829px;
					--column-flex: 829
				}
				
				#comp-kpqfx1mh {
					min-height: 32px;
					height: auto
				}
				
				#comp-kpqfx1mh1 {
					min-height: 29px;
					height: auto
				}
				
				#comp-kpndp2eo {
					--bg: 0, 0, 0;
					--alpha-bg: 0;
					--brw: 0px;
					--brd: var(--color_15);
					--rd: 0px;
					--shd: none;
					--bg-dd: var(--color_11);
					--alpha-bg-dd: 1;
					--brw-dd: 0px;
					--brd-dd: var(--color_15);
					--rd-dd: 0px;
					--shd-dd: none;
					--fnt: var(--font_10);
					--fnt-size-dd: 15px;
					--txt-dd: var(--color_15);
					--alpha-txt-dd: 1;
					--txt-slct-dd: var(--color_18);
					--alpha-txt-slct-dd: 1;
					--txth-dd: var(--color_14);
					--alpha-txth-dd: 1;
					--txth: var(--color_17);
					--alpha-txth: 1;
					--txt: var(--color_15);
					--alpha-txt: 1;
					--badge-bg: 226, 28, 33;
					--alpha-badge-bg: 1;
					--badge-txt: var(--color_11);
					--alpha-badge-txt: 1;
					--fillcolor: var(--color_18);
					--alpha-fillcolor: 1;
					--alpha-brd: 1;
					--alpha-brd-dd: 0;
					--boxShadowToggleOn-shd: none;
					--boxShadowToggleOn-shd-dd: none;
					justify-content: flex-end;
					direction: ltr;
					--icon-size: 22px
				}
				
				#comp-kpqfz361 {
					--menuTotalBordersX: 0px;
					--menuTotalBordersY: 0px;
					--bgDrop: var(--color_11);
					--rd: 0px;
					--shd: none;
					--fnt: var(--font_1);
					--pad: 0px;
					--txt: var(--color_15);
					--trans: color 0.4s ease 0s;
					--txth: var(--color_25);
					--txts: var(--color_25);
					--alpha-bgDrop: 1;
					--alpha-txt: 1;
					--alpha-txth: 1;
					--alpha-txts: 1;
					--boxShadowToggleOn-shd: none
				}
				
				#BACKGROUND_GROUP {
					--transition-duration: 700ms
				}
				</style>
				<style id="css_가이드아이디">
				[data-mesh-id=comp-kpnfe02s1inlineContent] {
					height: auto;
					width: 100%
				}
				
				[data-mesh-id=comp-kpnfe02s1inlineContent-gridContainer] {
					position: static;
					display: grid;
					height: auto;
					width: 100%;
					min-height: 1260px;
					grid-template-rows: repeat(13, min-content) 1fr;
					grid-template-columns: 100%
				}
				
				[data-mesh-id=comp-kpnfe02s1inlineContent-gridContainer] > [id="comp-kpnfe02s2"] {
					position: relative;
					margin: 120px 0px 28px calc((100% - 980px) * 0.5);
					left: 20px;
					grid-area: 1 / 1 / 2 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=comp-kpnfe02s1inlineContent-gridContainer] > [id="comp-kpnfe02s3"] {
					position: relative;
					margin: 0px 0px 10px calc((100% - 980px) * 0.5);
					left: 20px;
					grid-area: 2 / 1 / 3 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=comp-kpnfe02s1inlineContent-gridContainer] > [id="comp-kpngmzdp"] {
					position: relative;
					margin: 0px 0px 66px calc((100% - 980px) * 0.5);
					left: 20px;
					grid-area: 4 / 1 / 5 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=comp-kpnfe02s1inlineContent-gridContainer] > [id="comp-kpnfe02t"] {
					position: relative;
					margin: 0px 0px 34px calc((100% - 980px) * 0.5);
					left: 20px;
					grid-area: 5 / 1 / 6 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=comp-kpnfe02s1inlineContent-gridContainer] > [id="comp-kpngmkdy"] {
					position: relative;
					margin: 0px 0px 10px calc((100% - 980px) * 0.5);
					left: 20px;
					grid-area: 6 / 1 / 7 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=comp-kpnfe02s1inlineContent-gridContainer] > [id="comp-kpngmzdq"] {
					position: relative;
					margin: 0px 0px 66px calc((100% - 980px) * 0.5);
					left: 20px;
					grid-area: 8 / 1 / 9 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=comp-kpnfe02s1inlineContent-gridContainer] > [id="comp-kpnfe02t2"] {
					position: relative;
					margin: 0px 0px 34px calc((100% - 980px) * 0.5);
					left: 20px;
					grid-area: 9 / 1 / 10 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=comp-kpnfe02s1inlineContent-gridContainer] > [id="comp-kpngmkdz"] {
					position: relative;
					margin: 0px 0px 10px calc((100% - 980px) * 0.5);
					left: 20px;
					grid-area: 10 / 1 / 11 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=comp-kpnfe02s1inlineContent-gridContainer] > [id="comp-kpngmzdq1"] {
					position: relative;
					margin: 0px 0px 66px calc((100% - 980px) * 0.5);
					left: 20px;
					grid-area: 12 / 1 / 13 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=comp-kpnfe02s1inlineContent-gridContainer] > [id="comp-kpnfe02t4"] {
					position: relative;
					margin: 0px 0px 34px calc((100% - 980px) * 0.5);
					left: 20px;
					grid-area: 13 / 1 / 14 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=comp-kpnfe02s1inlineContent-gridContainer] > [id="comp-kpngmke0"] {
					position: relative;
					margin: 0px 0px 10px calc((100% - 980px) * 0.5);
					left: 20px;
					grid-area: 14 / 1 / 15 / 2;
					justify-self: start;
					align-self: start
				}
				
				[data-mesh-id=comp-kpnfe02s1inlineContent-wedge-4] {
					visibility: hidden;
					height: 370px;
					width: 0;
					grid-area: 1 / 1 / 4 / 2
				}
				
				[data-mesh-id=comp-kpnfe02s1inlineContent-wedge-8] {
					visibility: hidden;
					height: 650px;
					width: 0;
					grid-area: 1 / 1 / 8 / 2
				}
				
				[data-mesh-id=comp-kpnfe02s1inlineContent-wedge-12] {
					visibility: hidden;
					height: 930px;
					width: 0;
					grid-area: 1 / 1 / 12 / 2
				}
				
				[data-mesh-id=Container가이드아이디inlineContent] {
					height: auto;
					width: 100%
				}
				
				[data-mesh-id=Container가이드아이디inlineContent-gridContainer] {
					position: static;
					display: grid;
					height: auto;
					width: 100%;
					min-height: 500px;
					grid-template-rows: 1fr;
					grid-template-columns: 100%;
					padding-bottom: 0px;
					box-sizing: border-box
				}
				
				[data-mesh-id=Container가이드아이디inlineContent-gridContainer] > [id="comp-kpnfe02s"] {
					position: relative;
					margin: 0px 0px 0 calc((100% - 980px) * 0.5);
					left: 0px;
					grid-area: 1 / 1 / 2 / 2;
					justify-self: start;
					align-self: start
				}
				
				#가이드아이디 {
					left: 0;
					margin-left: 0;
					width: 100%;
					min-width: 980px
				}
				
				#comp-kpnfe02s {
					left: 0;
					margin-left: 0;
					width: 100%;
					min-width: 980px
				}
				
				#comp-kpnfe02s1 {
					width: 980px
				}
				
				#comp-kpnfe02s2 {
					width: 940px;
					height: 54px
				}
				
				#comp-kpnfe02s3 {
					width: 940px;
					height: 32px
				}
				
				#comp-kpngmzdp {
					width: 40px;
					height: 40px
				}
				
				#comp-kpnfe02t {
					width: 780px;
					height: 31px
				}
				
				#comp-kpngmkdy {
					width: 780px;
					height: 28px
				}
				
				#comp-kpngmzdq {
					width: 40px;
					height: 40px
				}
				
				#comp-kpnfe02t2 {
					width: 780px;
					height: 31px
				}
				
				#comp-kpngmkdz {
					width: 780px;
					height: 28px
				}
				
				#comp-kpngmzdq1 {
					width: 40px;
					height: 40px
				}
				
				#comp-kpnfe02t4 {
					width: 780px;
					height: 31px
				}
				
				#comp-kpngmke0 {
					width: 780px;
					height: 28px
				}
				
				#마스터페이지 {
					--pinned-layers-in-page: 0
				}
				
				#가이드아이디 {
					width: auto;
					min-height: 500px
				}
				
				#comp-kpnfe02s {
					--bg-overlay-color: transparent;
					--padding: 0px;
					--margin: 0px;
					min-width: 980px
				}
				
				#comp-kpnfe02s1 {
					--bg-overlay-color: rgb(var(--color_27));
					width: 100%;
					--column-width: 980px;
					--column-flex: 980
				}
				
				#comp-kpnfe02s2 {
					height: auto
				}
				
				#comp-kpnfe02s3 {
					height: auto
				}
				
				#comp-kpngmzdp {
					--stroke-width: 0;
					--fill-opacity: 1;
					--stroke: #999999;
					--stroke-opacity: 1;
					--fill: #26529C
				}
				
				#comp-kpnfe02t {
					height: auto
				}
				
				#comp-kpngmkdy {
					height: auto
				}
				
				#comp-kpngmzdq {
					--stroke-width: 0;
					--fill-opacity: 1;
					--stroke: #999999;
					--stroke-opacity: 1;
					--fill: #26529C
				}
				
				#comp-kpnfe02t2 {
					height: auto
				}
				
				#comp-kpngmkdz {
					height: auto
				}
				
				#comp-kpngmzdq1 {
					--stroke-width: 0;
					--fill-opacity: 1;
					--stroke: #999999;
					--stroke-opacity: 1;
					--fill: #26529C
				}
				
				#comp-kpnfe02t4 {
					height: auto
				}
				
				#comp-kpngmke0 {
					height: auto
				}
				
				#pageBackground_가이드아이디 {
					--bg-position: absolute;
					--bg-overlay-color: rgb(var(--color_11));
					--fill-layer-background-overlay-color: transparent;
					--fill-layer-background-overlay-position: absolute
				}
				</style>
			</pages-css>
			<div id="SITE_CONTAINER">
				<div id="main_MF"></div>
			</div>
			<div id="site-root">
				<div id="마스터페이지" class="메시레이아웃">
					<header></header>
					<main id="PAGES_CONTAINER" tabindex="-1">
						<div id="SITE_PAGES">
							<div class="스트레치">
								<div id="가이드아이디" class="확인용2">
									<div class="확인용3"></div>
									<div class="확인용4">
										<div id="Container가이드아이디" class="확인용5">
											<div data-mesh-id="Container가이드아이디inlineContent" data-testid="inline-content">
												<div data-mesh-id="Container가이드아이디inlineContent-gridContainer" data-testid="mesh-container-content">
													<section id="comp-kpnfe02s" class="확인용6">
														<div data-testid="columns" class="확인용8">
															<div id="comp-kpnfe02s1" class="릴레이티브비지블">
																<div data-mesh-id="comp-kpnfe02s1inlineContent" data-testid="inline-content">
																	<div data-mesh-id="comp-kpnfe02s1inlineContent-gridContainer" data-testid="mesh-container-content">
																		<div id="comp-kpnfe02s2" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																			<h1 class="font_6" style="text-align:center;line-height:1.35em;font-size:40px"><span class="color_32"><span style="text-transform: uppercase;">가이드</span></span></h1></div>
																		<div id="comp-kpnfe02s3" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																			<p class="font_8" style="text-align:center;line-height:1.75em;font-size:18px"><span>스탬프를 따라 여행하기</span></p>
																		</div>
																		<div id="comp-kpngmzdp">
																			<div data-testid="svgRoot-comp-kpngmzdp" class="TG-Zk _1UnNA">
																				<svg preserveAspectRatio="xMidYMid meet" data-bbox="-0.052 0 200.052 200" xmlns="http://www.w3.org/2000/svg" viewBox="-0.052 0 200.052 200" role="img">
																					<g>
																						<path d="M95.4 137.7c-5.1 0-9.1 4-9.1 9.1 0 5 4.1 9.1 9.1 9.1 5.1 0 9.3-4.1 9.3-9.1 0-5.1-4.1-9.1-9.3-9.1z" />
																						<path d="M98.7 39.9c-17.5 0-25.6 12.9-29 18.4l-.3.5c-.7 1.3-2.1 3.6 1.1 5.8l1.9 1.3c2.7 1.8 4.3.6 5.4-.4.4-.4.9-1.1 1.4-2 2.4-3.8 7.4-11.8 20.5-11.8 12.9 0 17.5 9.7 17.5 18.8 0 8.5-6.4 13.7-13.2 19.3-7 5.7-14.1 11.5-14.1 21.1v10.6c0 2.6 1.6 4.4 4 4.4h3.5c2.6 0 4.2-1.7 4.2-4.4v-10.4c0-4.6 4.6-8.3 9.9-12.5 7.8-6.2 17.6-13.9 17.6-28.7-.2-14.4-9.7-30-30.4-30z" />
																						<path d="M100 0C44.9 0 0 44.9 0 100c0 16.3 4.1 32.5 11.8 47L.2 183.2c-.6 1.8-.1 3.7 1.2 5.1 1.3 1.4 3.2 1.9 5 1.4l34.1-9.3C57.9 193.2 78.4 200 100 200c55.1 0 100-44.9 100-100S155.1 0 100 0zm0 189.8c-20.1 0-39.2-6.6-55.2-19.1-.9-.7-2-1.1-3.2-1.1-.5 0-.9.1-1.4.2l-27.4 7.5 9.3-29.3c.4-1.4.3-2.8-.4-4.1-7.6-13.4-11.5-28.6-11.5-44 0-49.5 40.3-89.8 89.8-89.8s89.8 40.3 89.8 89.8c0 49.6-40.3 89.9-89.8 89.9z" /> </g>
																				</svg>
																			</div>
																		</div>
																		<div id="comp-kpnfe02t" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																			<h2 class="font_0" style="text-align:left;line-height:1.41em;font-size:22px"><span class="color_32"><span style="text-transform: uppercase;">스탬프가 무엇인가요?</span></span></h2></div>
																		<div id="comp-kpngmkdy" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																			<p class="font_9" style="text-align:left;line-height:1.875em;font-size:15px"><span>인기 리뷰 사이트에 맞춰 생성하는 지점입니다.</span></p>
																		</div>
																		<div id="comp-kpngmzdq">
																			<div data-testid="svgRoot-comp-kpngmzdq" class="TG-Zk _1UnNA">
																				<svg preserveAspectRatio="xMidYMid meet" data-bbox="-0.052 0 200.052 200" xmlns="http://www.w3.org/2000/svg" viewBox="-0.052 0 200.052 200" role="img">
																					<g>
																						<path d="M95.4 137.7c-5.1 0-9.1 4-9.1 9.1 0 5 4.1 9.1 9.1 9.1 5.1 0 9.3-4.1 9.3-9.1 0-5.1-4.1-9.1-9.3-9.1z" />
																						<path d="M98.7 39.9c-17.5 0-25.6 12.9-29 18.4l-.3.5c-.7 1.3-2.1 3.6 1.1 5.8l1.9 1.3c2.7 1.8 4.3.6 5.4-.4.4-.4.9-1.1 1.4-2 2.4-3.8 7.4-11.8 20.5-11.8 12.9 0 17.5 9.7 17.5 18.8 0 8.5-6.4 13.7-13.2 19.3-7 5.7-14.1 11.5-14.1 21.1v10.6c0 2.6 1.6 4.4 4 4.4h3.5c2.6 0 4.2-1.7 4.2-4.4v-10.4c0-4.6 4.6-8.3 9.9-12.5 7.8-6.2 17.6-13.9 17.6-28.7-.2-14.4-9.7-30-30.4-30z" />
																						<path d="M100 0C44.9 0 0 44.9 0 100c0 16.3 4.1 32.5 11.8 47L.2 183.2c-.6 1.8-.1 3.7 1.2 5.1 1.3 1.4 3.2 1.9 5 1.4l34.1-9.3C57.9 193.2 78.4 200 100 200c55.1 0 100-44.9 100-100S155.1 0 100 0zm0 189.8c-20.1 0-39.2-6.6-55.2-19.1-.9-.7-2-1.1-3.2-1.1-.5 0-.9.1-1.4.2l-27.4 7.5 9.3-29.3c.4-1.4.3-2.8-.4-4.1-7.6-13.4-11.5-28.6-11.5-44 0-49.5 40.3-89.8 89.8-89.8s89.8 40.3 89.8 89.8c0 49.6-40.3 89.9-89.8 89.9z" /> </g>
																				</svg>
																				<fieldset id="red">
																					<legend>test</legend>
																				</fieldset>
																			</div>
																		</div>
																		<div id="comp-kpnfe02t2" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																			<h2 class="font_0" style="text-align:left;line-height:1.41em;font-size:22px"><span class="color_32"><span style="text-transform: uppercase;">스탬프가 사라지나요?</span></span></h2></div>
																		<div id="comp-kpngmkdz" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																			<p class="font_9" style="text-align:left;line-height:1.875em;font-size:15px"><span>스탬프는 사라져도 모은 건 사라지지 않습니다.</span></p>
																		</div>
																		<div id="comp-kpngmzdq1">
																			<div data-testid="svgRoot-comp-kpngmzdq1" class="TG-Zk _1UnNA">
																				<svg preserveAspectRatio="xMidYMid meet" data-bbox="-0.052 0 200.052 200" xmlns="http://www.w3.org/2000/svg" viewBox="-0.052 0 200.052 200" role="img">
																					<g>
																						<path d="M95.4 137.7c-5.1 0-9.1 4-9.1 9.1 0 5 4.1 9.1 9.1 9.1 5.1 0 9.3-4.1 9.3-9.1 0-5.1-4.1-9.1-9.3-9.1z" />
																						<path d="M98.7 39.9c-17.5 0-25.6 12.9-29 18.4l-.3.5c-.7 1.3-2.1 3.6 1.1 5.8l1.9 1.3c2.7 1.8 4.3.6 5.4-.4.4-.4.9-1.1 1.4-2 2.4-3.8 7.4-11.8 20.5-11.8 12.9 0 17.5 9.7 17.5 18.8 0 8.5-6.4 13.7-13.2 19.3-7 5.7-14.1 11.5-14.1 21.1v10.6c0 2.6 1.6 4.4 4 4.4h3.5c2.6 0 4.2-1.7 4.2-4.4v-10.4c0-4.6 4.6-8.3 9.9-12.5 7.8-6.2 17.6-13.9 17.6-28.7-.2-14.4-9.7-30-30.4-30z" />
																						<path d="M100 0C44.9 0 0 44.9 0 100c0 16.3 4.1 32.5 11.8 47L.2 183.2c-.6 1.8-.1 3.7 1.2 5.1 1.3 1.4 3.2 1.9 5 1.4l34.1-9.3C57.9 193.2 78.4 200 100 200c55.1 0 100-44.9 100-100S155.1 0 100 0zm0 189.8c-20.1 0-39.2-6.6-55.2-19.1-.9-.7-2-1.1-3.2-1.1-.5 0-.9.1-1.4.2l-27.4 7.5 9.3-29.3c.4-1.4.3-2.8-.4-4.1-7.6-13.4-11.5-28.6-11.5-44 0-49.5 40.3-89.8 89.8-89.8s89.8 40.3 89.8 89.8c0 49.6-40.3 89.9-89.8 89.9z" /> </g>
																				</svg>
																			</div>
																		</div>
																		<div id="comp-kpnfe02t4" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																			<h2 class="font_0" style="text-align:left;line-height:1.41em;font-size:22px"><span class="color_32"><span style="text-transform: uppercase;">업적이 무엇인가요?</span></span></h2></div>
																		<div id="comp-kpngmke0" class="숲많이감클래스" data-testid="리치텍스트엘리먼트">
																			<p class="font_9" style="text-align:left;line-height:1.875em;font-size:15px"><span>스탬프를 많이 모으면 생깁니다</span></p>
																		</div>
																		<div data-mesh-id="comp-kpnfe02s1inlineContent-wedge-4"></div>
																		<div data-mesh-id="comp-kpnfe02s1inlineContent-wedge-8"></div>
																		<div data-mesh-id="comp-kpnfe02s1inlineContent-wedge-12"></div>
																	</div>
																</div>
															</div>
														</div>
													</section>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</main>
					<div id="soapAfterPagesContainer" class="page-without-sosp">
						<div data-mesh-id="soapAfterPagesContainerinlineContent" data-testid="inline-content">
							<div data-mesh-id="soapAfterPagesContainerinlineContent-gridContainer" data-testid="mesh-container-content" </div></div>
						</div>
					</div>
					<div id="SCROLL_TO_BOTTOM" class="GFY_- ignore-focus" tabindex="-1" role="region" aria-label="bottom of page"> </div>
				</div>
			</div>
			<script>
			window.firstPageId = '가이드아이디'
			window.bi.sendBeat(12, 'Partially visible', {
				pageId: window.firstPageId
			})
			if(!window.__browser_deprecation__) {
				window.fedops.phaseStarted('partially_visible')
			}
			if(window.requestCloseWelcomeScreen) {
				window.requestCloseWelcomeScreen()
			}
			</script>
			<!-- react-dom -->
			<!-- Mirrored from jemilykoo.wixsite.com/website/guide by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 23 Jun 2021 06:36:48 GMT -->

		</html>