(function(t) {
    function e(n) {
        if (i[n]) return i[n].exports;
        var o = i[n] = {
            i: n,
            l: !1,
            exports: {}
        };
        return t[n].call(o.exports, o, o.exports, e), o.l = !0, o.exports
    }
    var i = {};
    e.m = t, e.c = i, e.i = function(t) {
        return t
    }, e.d = function(t, i, n) {
        e.o(t, i) || Object.defineProperty(t, i, {
            configurable: !1,
            enumerable: !0,
            get: n
        })
    }, e.n = function(t) {
        var i = t && t.__esModule ? function() {
            return t.default
        } : function() {
            return t
        };
        return e.d(i, "a", i), i
    }, e.o = function(t, e) {
        return Object.prototype.hasOwnProperty.call(t, e)
    }, e.p = "/", e(e.s = "n77y")
})({
    "/qmb": function(t, e, i) {
        (function(t) {
            function e(t) {
                var e = document.createElement("script");
                e.type = "text/javascript", e.async = !0, e.src = "https://" + t + ".js";
                var n = document.getElementsByTagName("script")[0];
                n.parentNode.insertBefore(e, n), window.addEventListener("message", i, !1)
            }

            function i(t) {
                if (t.data && "https://guardproject.com" === t.origin && "string" == typeof t.data) {
                    var e = t.data.split("=");
                    n.setCookie(e[0], e[1], 30)
                }
            }
            window.$ = t;
            var n = {
                getCookie: function(t) {
                    return t ? decodeURIComponent(document.cookie.replace(new RegExp("(?:(?:^|.*;)\\s*" + encodeURIComponent(t).replace(/[\-\.\+\*]/g, "\\$&") + "\\s*\\=\\s*([^;]*).*$)|^.*$"), "$1")) || null : null
                },
                setCookie: function(t, e, i) {
                    var n = new Date;
                    n.setTime(n.getTime() + 24 * i * 60 * 60 * 1e3);
                    var o = "expires=" + n.toUTCString(),
                        s = "domain=" + ("localhost" === window.location.hostname ? "localhost" : ".guardproject.com");
                    return document.cookie = t + "=" + e + ";" + o + ";" + s + ";path=/", !0
                },
                keys: function() {
                    for (var t = document.cookie.replace(/((?:^|\s*;)[^\=]+)(?=;|$)|^\s*|\s*(?:\=[^;]*)?(?:\1|$)/g, "").split(/\s*(?:\=[^;]*)?;\s*/), e = t.length, i = 0; i < e; i++) t[i] = decodeURIComponent(t[i]);
                    return t
                }
            };
            t(document).ready((function() {
                t("#demoLink").on("click", (function(t) {
                    "/" !== window.location.pathname && "/en/" !== window.location.pathname && "/pt/" !== window.location.pathname ? window.location = "/#demo" : "" !== this.hash && (t.preventDefault(), document.querySelector("#demo").scrollIntoView({
                        behavior: "smooth"
                    }))
                })), t("#preview-now").submit((function(e) {
                    var i = n.getCookie("ulang"),
                        o = "http://www.guardproject.com/" + ("es" === i ? "" : i + "/") + "demo/",
                        s = document.getElementById("websiteInputPreview"),
                        r = s.value;
                    return r && /^(https?:\/\/)?[a-z0-9-]+(\.[a-z0-9-]+)+$/i.test(r) ? (t("#demo-input-error").hide("fast"), r = r.replace("http://", ""), r = r.replace("https://", ""), window.open(o + r, "_blank")) : t("#demo-input-error").show("fast"), !1
                })), (function(t, e, i, n, o) {
                    t[n] = t[n] || [], t[n].push({
                        "gtm.start": (new Date).getTime(),
                        event: "gtm.js"
                    });
                    var s = e.getElementsByTagName(i)[0],
                        r = e.createElement(i);
                    r.async = !0, r.src = "//www.googletagmanager.com/gtm.js?id=GTM-5DHVQ5", s.parentNode.insertBefore(r, s)
                })(window, document, "script", "dataLayer")
            })), t(".navbar-toggle").click((function() {
                t(".navbar-default").css("background-color", "#fff")
            }));
            var o;
            switch (n.getCookie("ulang")) {
                case "es":
                    o = "55f316e5e4b0f02feef34f2c";
                    break;
                case "en":
                    o = "579fa20fe4b05d1cca42cc5a";
                    break;
                case "pt":
                    o = "5836ebd7e4b073245720877b"
            }
            "localhost" !== window.location.hostname && setTimeout((function() {
                e(o)
            }), 2e3)
        }).call(e, i("7t+N"))
    },
    "7t+N": function(t, e, i) {
        var n, o;
        (function(e, i) {
            "use strict";
            "object" == typeof t && "object" == typeof t.exports ? t.exports = e.document ? i(e, !0) : function(t) {
                if (!t.document) throw new Error("jQuery requires a window with a document");
                return i(t)
            } : i(e)
        })("undefined" != typeof window ? window : this, (function(i, s) {
            "use strict";

            function r(t, e) {
                e = e || rt;
                var i = e.createElement("script");
                i.text = t, e.head.appendChild(i).parentNode.removeChild(i)
            }

            function a(t) {
                var e = !!t && "length" in t && t.length,
                    i = yt.type(t);
                return "function" !== i && !yt.isWindow(t) && ("array" === i || 0 === e || "number" == typeof e && e > 0 && e - 1 in t)
            }

            function l(t, e) {
                return t.nodeName && t.nodeName.toLowerCase() === e.toLowerCase()
            }

            function c(t, e, i) {
                return yt.isFunction(e) ? yt.grep(t, (function(t, n) {
                    return !!e.call(t, n, t) !== i
                })) : e.nodeType ? yt.grep(t, (function(t) {
                    return t === e !== i
                })) : "string" != typeof e ? yt.grep(t, (function(t) {
                    return ut.call(e, t) > -1 !== i
                })) : At.test(e) ? yt.filter(e, t, i) : (e = yt.filter(e, t), yt.grep(t, (function(t) {
                    return ut.call(e, t) > -1 !== i && 1 === t.nodeType
                })))
            }

            function d(t, e) {
                for (;
                    (t = t[e]) && 1 !== t.nodeType;);
                return t
            }

            function u(t) {
                var e = {};
                return yt.each(t.match(It) || [], (function(t, i) {
                    e[i] = !0
                })), e
            }

            function p(t) {
                return t
            }

            function f(t) {
                throw t
            }

            function h(t, e, i, n) {
                var o;
                try {
                    t && yt.isFunction(o = t.promise) ? o.call(t).done(e).fail(i) : t && yt.isFunction(o = t.then) ? o.call(t, e, i) : e.apply(void 0, [t].slice(n))
                } catch (t) {
                    i.apply(void 0, [t])
                }
            }

            function g() {
                rt.removeEventListener("DOMContentLoaded", g), i.removeEventListener("load", g), yt.ready()
            }

            function v() {
                this.expando = yt.expando + v.uid++
            }

            function m(t) {
                return "true" === t || "false" !== t && ("null" === t ? null : t === +t + "" ? +t : Ft.test(t) ? JSON.parse(t) : t)
            }

            function y(t, e, i) {
                var n;
                if (void 0 === i && 1 === t.nodeType)
                    if (n = "data-" + e.replace(Wt, "-$&").toLowerCase(), "string" == typeof(i = t.getAttribute(n))) {
                        try {
                            i = m(i)
                        } catch (t) {}
                        Mt.set(t, e, i)
                    } else i = void 0;
                return i
            }

            function b(t, e, i, n) {
                var o, s = 1,
                    r = 20,
                    a = n ? function() {
                        return n.cur()
                    } : function() {
                        return yt.css(t, e, "")
                    },
                    l = a(),
                    c = i && i[3] || (yt.cssNumber[e] ? "" : "px"),
                    d = (yt.cssNumber[e] || "px" !== c && +l) && Ut.exec(yt.css(t, e));
                if (d && d[3] !== c) {
                    c = c || d[3], i = i || [], d = +l || 1;
                    do {
                        s = s || ".5", d /= s, yt.style(t, e, d + c)
                    } while (s !== (s = a() / l) && 1 !== s && --r)
                }
                return i && (d = +d || +l || 0, o = i[1] ? d + (i[1] + 1) * i[2] : +i[2], n && (n.unit = c, n.start = d, n.end = o)), o
            }

            function w(t) {
                var e, i = t.ownerDocument,
                    n = t.nodeName,
                    o = Vt[n];
                return o || (e = i.body.appendChild(i.createElement(n)), o = yt.css(e, "display"), e.parentNode.removeChild(e), "none" === o && (o = "block"), Vt[n] = o, o)
            }

            function T(t, e) {
                for (var i, n, o = [], s = 0, r = t.length; s < r; s++) n = t[s], n.style && (i = n.style.display, e ? ("none" === i && (o[s] = Rt.get(n, "display") || null, o[s] || (n.style.display = "")), "" === n.style.display && _t(n) && (o[s] = w(n))) : "none" !== i && (o[s] = "none", Rt.set(n, "display", i)));
                for (s = 0; s < r; s++) null != o[s] && (t[s].style.display = o[s]);
                return t
            }

            function x(t, e) {
                var i;
                return i = void 0 !== t.getElementsByTagName ? t.getElementsByTagName(e || "*") : void 0 !== t.querySelectorAll ? t.querySelectorAll(e || "*") : [], void 0 === e || e && l(t, e) ? yt.merge([t], i) : i
            }

            function k(t, e) {
                for (var i = 0, n = t.length; i < n; i++) Rt.set(t[i], "globalEval", !e || Rt.get(e[i], "globalEval"))
            }

            function C(t, e, i, n, o) {
                for (var s, r, a, l, c, d, u = e.createDocumentFragment(), p = [], f = 0, h = t.length; f < h; f++)
                    if ((s = t[f]) || 0 === s)
                        if ("object" === yt.type(s)) yt.merge(p, s.nodeType ? [s] : s);
                        else if (Kt.test(s)) {
                    for (r = r || u.appendChild(e.createElement("div")), a = (Gt.exec(s) || ["", ""])[1].toLowerCase(), l = Qt[a] || Qt._default, r.innerHTML = l[1] + yt.htmlPrefilter(s) + l[2], d = l[0]; d--;) r = r.lastChild;
                    yt.merge(p, r.childNodes), r = u.firstChild, r.textContent = ""
                } else p.push(e.createTextNode(s));
                for (u.textContent = "", f = 0; s = p[f++];)
                    if (n && yt.inArray(s, n) > -1) o && o.push(s);
                    else if (c = yt.contains(s.ownerDocument, s), r = x(u.appendChild(s), "script"), c && k(r), i)
                    for (d = 0; s = r[d++];) Jt.test(s.type || "") && i.push(s);
                return u
            }

            function S() {
                return !0
            }

            function $() {
                return !1
            }

            function E() {
                try {
                    return rt.activeElement
                } catch (t) {}
            }

            function A(t, e, i, n, o, s) {
                var r, a;
                if ("object" == typeof e) {
                    "string" != typeof i && (n = n || i, i = void 0);
                    for (a in e) A(t, a, i, n, e[a], s);
                    return t
                }
                if (null == n && null == o ? (o = i, n = i = void 0) : null == o && ("string" == typeof i ? (o = n, n = void 0) : (o = n, n = i, i = void 0)), !1 === o) o = $;
                else if (!o) return t;
                return 1 === s && (r = o, o = function(t) {
                    return yt().off(t), r.apply(this, arguments)
                }, o.guid = r.guid || (r.guid = yt.guid++)), t.each((function() {
                    yt.event.add(this, e, o, n, i)
                }))
            }

            function D(t, e) {
                return l(t, "table") && l(11 !== e.nodeType ? e : e.firstChild, "tr") ? yt(">tbody", t)[0] || t : t
            }

            function N(t) {
                return t.type = (null !== t.getAttribute("type")) + "/" + t.type, t
            }

            function O(t) {
                var e = re.exec(t.type);
                return e ? t.type = e[1] : t.removeAttribute("type"), t
            }

            function j(t, e) {
                var i, n, o, s, r, a, l, c;
                if (1 === e.nodeType) {
                    if (Rt.hasData(t) && (s = Rt.access(t), r = Rt.set(e, s), c = s.events)) {
                        delete r.handle, r.events = {};
                        for (o in c)
                            for (i = 0, n = c[o].length; i < n; i++) yt.event.add(e, o, c[o][i])
                    }
                    Mt.hasData(t) && (a = Mt.access(t), l = yt.extend({}, a), Mt.set(e, l))
                }
            }

            function I(t, e) {
                var i = e.nodeName.toLowerCase();
                "input" === i && Yt.test(t.type) ? e.checked = t.checked : "input" !== i && "textarea" !== i || (e.defaultValue = t.defaultValue)
            }

            function L(t, e, i, n) {
                e = ct.apply([], e);
                var o, s, a, l, c, d, u = 0,
                    p = t.length,
                    f = p - 1,
                    h = e[0],
                    g = yt.isFunction(h);
                if (g || p > 1 && "string" == typeof h && !mt.checkClone && se.test(h)) return t.each((function(o) {
                    var s = t.eq(o);
                    g && (e[0] = h.call(this, o, s.html())), L(s, e, i, n)
                }));
                if (p && (o = C(e, t[0].ownerDocument, !1, t, n), s = o.firstChild, 1 === o.childNodes.length && (o = s), s || n)) {
                    for (a = yt.map(x(o, "script"), N), l = a.length; u < p; u++) c = o, u !== f && (c = yt.clone(c, !0, !0), l && yt.merge(a, x(c, "script"))), i.call(t[u], c, u);
                    if (l)
                        for (d = a[a.length - 1].ownerDocument, yt.map(a, O), u = 0; u < l; u++) c = a[u], Jt.test(c.type || "") && !Rt.access(c, "globalEval") && yt.contains(d, c) && (c.src ? yt._evalUrl && yt._evalUrl(c.src) : r(c.textContent.replace(ae, ""), d))
                }
                return t
            }

            function P(t, e, i) {
                for (var n, o = e ? yt.filter(e, t) : t, s = 0; null != (n = o[s]); s++) i || 1 !== n.nodeType || yt.cleanData(x(n)), n.parentNode && (i && yt.contains(n.ownerDocument, n) && k(x(n, "script")), n.parentNode.removeChild(n));
                return t
            }

            function H(t, e, i) {
                var n, o, s, r, a = t.style;
                return i = i || de(t), i && (r = i.getPropertyValue(e) || i[e], "" !== r || yt.contains(t.ownerDocument, t) || (r = yt.style(t, e)), !mt.pixelMarginRight() && ce.test(r) && le.test(e) && (n = a.width, o = a.minWidth, s = a.maxWidth, a.minWidth = a.maxWidth = a.width = r, r = i.width, a.width = n, a.minWidth = o, a.maxWidth = s)), void 0 !== r ? r + "" : r
            }

            function q(t, e) {
                return {
                    get: function() {
                        return t() ? void delete this.get : (this.get = e).apply(this, arguments)
                    }
                }
            }

            function R(t) {
                if (t in ve) return t;
                for (var e = t[0].toUpperCase() + t.slice(1), i = ge.length; i--;)
                    if ((t = ge[i] + e) in ve) return t
            }

            function M(t) {
                var e = yt.cssProps[t];
                return e || (e = yt.cssProps[t] = R(t) || t), e
            }

            function F(t, e, i) {
                var n = Ut.exec(e);
                return n ? Math.max(0, n[2] - (i || 0)) + (n[3] || "px") : e
            }

            function W(t, e, i, n, o) {
                var s, r = 0;
                for (s = i === (n ? "border" : "content") ? 4 : "width" === e ? 1 : 0; s < 4; s += 2) "margin" === i && (r += yt.css(t, i + Bt[s], !0, o)), n ? ("content" === i && (r -= yt.css(t, "padding" + Bt[s], !0, o)), "margin" !== i && (r -= yt.css(t, "border" + Bt[s] + "Width", !0, o))) : (r += yt.css(t, "padding" + Bt[s], !0, o), "padding" !== i && (r += yt.css(t, "border" + Bt[s] + "Width", !0, o)));
                return r
            }

            function z(t, e, i) {
                var n, o = de(t),
                    s = H(t, e, o),
                    r = "border-box" === yt.css(t, "boxSizing", !1, o);
                return ce.test(s) ? s : (n = r && (mt.boxSizingReliable() || s === t.style[e]), "auto" === s && (s = t["offset" + e[0].toUpperCase() + e.slice(1)]), (s = parseFloat(s) || 0) + W(t, e, i || (r ? "border" : "content"), n, o) + "px")
            }

            function U(t, e, i, n, o) {
                return new U.prototype.init(t, e, i, n, o)
            }

            function B() {
                ye && (!1 === rt.hidden && i.requestAnimationFrame ? i.requestAnimationFrame(B) : i.setTimeout(B, yt.fx.interval), yt.fx.tick())
            }

            function _() {
                return i.setTimeout((function() {
                    me = void 0
                })), me = yt.now()
            }

            function X(t, e) {
                var i, n = 0,
                    o = {
                        height: t
                    };
                for (e = e ? 1 : 0; n < 4; n += 2 - e) i = Bt[n], o["margin" + i] = o["padding" + i] = t;
                return e && (o.opacity = o.width = t), o
            }

            function V(t, e, i) {
                for (var n, o = (J.tweeners[e] || []).concat(J.tweeners["*"]), s = 0, r = o.length; s < r; s++)
                    if (n = o[s].call(i, e, t)) return n
            }

            function Y(t, e, i) {
                var n, o, s, r, a, l, c, d, u = "width" in e || "height" in e,
                    p = this,
                    f = {},
                    h = t.style,
                    g = t.nodeType && _t(t),
                    v = Rt.get(t, "fxshow");
                i.queue || (r = yt._queueHooks(t, "fx"), null == r.unqueued && (r.unqueued = 0, a = r.empty.fire, r.empty.fire = function() {
                    r.unqueued || a()
                }), r.unqueued++, p.always((function() {
                    p.always((function() {
                        r.unqueued--, yt.queue(t, "fx").length || r.empty.fire()
                    }))
                })));
                for (n in e)
                    if (o = e[n], be.test(o)) {
                        if (delete e[n], s = s || "toggle" === o, o === (g ? "hide" : "show")) {
                            if ("show" !== o || !v || void 0 === v[n]) continue;
                            g = !0
                        }
                        f[n] = v && v[n] || yt.style(t, n)
                    } if ((l = !yt.isEmptyObject(e)) || !yt.isEmptyObject(f)) {
                    u && 1 === t.nodeType && (i.overflow = [h.overflow, h.overflowX, h.overflowY], c = v && v.display, null == c && (c = Rt.get(t, "display")), d = yt.css(t, "display"), "none" === d && (c ? d = c : (T([t], !0), c = t.style.display || c, d = yt.css(t, "display"), T([t]))), ("inline" === d || "inline-block" === d && null != c) && "none" === yt.css(t, "float") && (l || (p.done((function() {
                        h.display = c
                    })), null == c && (d = h.display, c = "none" === d ? "" : d)), h.display = "inline-block")), i.overflow && (h.overflow = "hidden", p.always((function() {
                        h.overflow = i.overflow[0], h.overflowX = i.overflow[1], h.overflowY = i.overflow[2]
                    }))), l = !1;
                    for (n in f) l || (v ? "hidden" in v && (g = v.hidden) : v = Rt.access(t, "fxshow", {
                        display: c
                    }), s && (v.hidden = !g), g && T([t], !0), p.done((function() {
                        g || T([t]), Rt.remove(t, "fxshow");
                        for (n in f) yt.style(t, n, f[n])
                    }))), l = V(g ? v[n] : 0, n, p), n in v || (v[n] = l.start, g && (l.end = l.start, l.start = 0))
                }
            }

            function G(t, e) {
                var i, n, o, s, r;
                for (i in t)
                    if (n = yt.camelCase(i), o = e[n], s = t[i], Array.isArray(s) && (o = s[1], s = t[i] = s[0]), i !== n && (t[n] = s, delete t[i]), (r = yt.cssHooks[n]) && "expand" in r) {
                        s = r.expand(s), delete t[n];
                        for (i in s) i in t || (t[i] = s[i], e[i] = o)
                    } else e[n] = o
            }

            function J(t, e, i) {
                var n, o, s = 0,
                    r = J.prefilters.length,
                    a = yt.Deferred().always((function() {
                        delete l.elem
                    })),
                    l = function() {
                        if (o) return !1;
                        for (var e = me || _(), i = Math.max(0, c.startTime + c.duration - e), n = i / c.duration || 0, s = 1 - n, r = 0, l = c.tweens.length; r < l; r++) c.tweens[r].run(s);
                        return a.notifyWith(t, [c, s, i]), s < 1 && l ? i : (l || a.notifyWith(t, [c, 1, 0]), a.resolveWith(t, [c]), !1)
                    },
                    c = a.promise({
                        elem: t,
                        props: yt.extend({}, e),
                        opts: yt.extend(!0, {
                            specialEasing: {},
                            easing: yt.easing._default
                        }, i),
                        originalProperties: e,
                        originalOptions: i,
                        startTime: me || _(),
                        duration: i.duration,
                        tweens: [],
                        createTween: function(e, i) {
                            var n = yt.Tween(t, c.opts, e, i, c.opts.specialEasing[e] || c.opts.easing);
                            return c.tweens.push(n), n
                        },
                        stop: function(e) {
                            var i = 0,
                                n = e ? c.tweens.length : 0;
                            if (o) return this;
                            for (o = !0; i < n; i++) c.tweens[i].run(1);
                            return e ? (a.notifyWith(t, [c, 1, 0]), a.resolveWith(t, [c, e])) : a.rejectWith(t, [c, e]), this
                        }
                    }),
                    d = c.props;
                for (G(d, c.opts.specialEasing); s < r; s++)
                    if (n = J.prefilters[s].call(c, t, d, c.opts)) return yt.isFunction(n.stop) && (yt._queueHooks(c.elem, c.opts.queue).stop = yt.proxy(n.stop, n)), n;
                return yt.map(d, V, c), yt.isFunction(c.opts.start) && c.opts.start.call(t, c), c.progress(c.opts.progress).done(c.opts.done, c.opts.complete).fail(c.opts.fail).always(c.opts.always), yt.fx.timer(yt.extend(l, {
                    elem: t,
                    anim: c,
                    queue: c.opts.queue
                })), c
            }

            function Q(t) {
                return (t.match(It) || []).join(" ")
            }

            function K(t) {
                return t.getAttribute && t.getAttribute("class") || ""
            }

            function Z(t, e, i, n) {
                var o;
                if (Array.isArray(e)) yt.each(e, (function(e, o) {
                    i || Ne.test(t) ? n(t, o) : Z(t + "[" + ("object" == typeof o && null != o ? e : "") + "]", o, i, n)
                }));
                else if (i || "object" !== yt.type(e)) n(t, e);
                else
                    for (o in e) Z(t + "[" + o + "]", e[o], i, n)
            }

            function tt(t) {
                return function(e, i) {
                    "string" != typeof e && (i = e, e = "*");
                    var n, o = 0,
                        s = e.toLowerCase().match(It) || [];
                    if (yt.isFunction(i))
                        for (; n = s[o++];) "+" === n[0] ? (n = n.slice(1) || "*", (t[n] = t[n] || []).unshift(i)) : (t[n] = t[n] || []).push(i)
                }
            }

            function et(t, e, i, n) {
                function o(a) {
                    var l;
                    return s[a] = !0, yt.each(t[a] || [], (function(t, a) {
                        var c = a(e, i, n);
                        return "string" != typeof c || r || s[c] ? r ? !(l = c) : void 0 : (e.dataTypes.unshift(c), o(c), !1)
                    })), l
                }
                var s = {},
                    r = t === ze;
                return o(e.dataTypes[0]) || !s["*"] && o("*")
            }

            function it(t, e) {
                var i, n, o = yt.ajaxSettings.flatOptions || {};
                for (i in e) void 0 !== e[i] && ((o[i] ? t : n || (n = {}))[i] = e[i]);
                return n && yt.extend(!0, t, n), t
            }

            function nt(t, e, i) {
                for (var n, o, s, r, a = t.contents, l = t.dataTypes;
                    "*" === l[0];) l.shift(), void 0 === n && (n = t.mimeType || e.getResponseHeader("Content-Type"));
                if (n)
                    for (o in a)
                        if (a[o] && a[o].test(n)) {
                            l.unshift(o);
                            break
                        } if (l[0] in i) s = l[0];
                else {
                    for (o in i) {
                        if (!l[0] || t.converters[o + " " + l[0]]) {
                            s = o;
                            break
                        }
                        r || (r = o)
                    }
                    s = s || r
                }
                if (s) return s !== l[0] && l.unshift(s), i[s]
            }

            function ot(t, e, i, n) {
                var o, s, r, a, l, c = {},
                    d = t.dataTypes.slice();
                if (d[1])
                    for (r in t.converters) c[r.toLowerCase()] = t.converters[r];
                for (s = d.shift(); s;)
                    if (t.responseFields[s] && (i[t.responseFields[s]] = e), !l && n && t.dataFilter && (e = t.dataFilter(e, t.dataType)), l = s, s = d.shift())
                        if ("*" === s) s = l;
                        else if ("*" !== l && l !== s) {
                    if (!(r = c[l + " " + s] || c["* " + s]))
                        for (o in c)
                            if (a = o.split(" "), a[1] === s && (r = c[l + " " + a[0]] || c["* " + a[0]])) {
                                !0 === r ? r = c[o] : !0 !== c[o] && (s = a[0], d.unshift(a[1]));
                                break
                            } if (!0 !== r)
                        if (r && t.throws) e = r(e);
                        else try {
                            e = r(e)
                        } catch (t) {
                            return {
                                state: "parsererror",
                                error: r ? t : "No conversion from " + l + " to " + s
                            }
                        }
                }
                return {
                    state: "success",
                    data: e
                }
            }
            var st = [],
                rt = i.document,
                at = Object.getPrototypeOf,
                lt = st.slice,
                ct = st.concat,
                dt = st.push,
                ut = st.indexOf,
                pt = {},
                ft = pt.toString,
                ht = pt.hasOwnProperty,
                gt = ht.toString,
                vt = gt.call(Object),
                mt = {},
                yt = function(t, e) {
                    return new yt.fn.init(t, e)
                },
                bt = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,
                wt = /^-ms-/,
                Tt = /-([a-z])/g,
                xt = function(t, e) {
                    return e.toUpperCase()
                };
            yt.fn = yt.prototype = {
                jquery: "3.2.1",
                constructor: yt,
                length: 0,
                toArray: function() {
                    return lt.call(this)
                },
                get: function(t) {
                    return null == t ? lt.call(this) : t < 0 ? this[t + this.length] : this[t]
                },
                pushStack: function(t) {
                    var e = yt.merge(this.constructor(), t);
                    return e.prevObject = this, e
                },
                each: function(t) {
                    return yt.each(this, t)
                },
                map: function(t) {
                    return this.pushStack(yt.map(this, (function(e, i) {
                        return t.call(e, i, e)
                    })))
                },
                slice: function() {
                    return this.pushStack(lt.apply(this, arguments))
                },
                first: function() {
                    return this.eq(0)
                },
                last: function() {
                    return this.eq(-1)
                },
                eq: function(t) {
                    var e = this.length,
                        i = +t + (t < 0 ? e : 0);
                    return this.pushStack(i >= 0 && i < e ? [this[i]] : [])
                },
                end: function() {
                    return this.prevObject || this.constructor()
                },
                push: dt,
                sort: st.sort,
                splice: st.splice
            }, yt.extend = yt.fn.extend = function() {
                var t, e, i, n, o, s, r = arguments[0] || {},
                    a = 1,
                    l = arguments.length,
                    c = !1;
                for ("boolean" == typeof r && (c = r, r = arguments[a] || {}, a++), "object" == typeof r || yt.isFunction(r) || (r = {}), a === l && (r = this, a--); a < l; a++)
                    if (null != (t = arguments[a]))
                        for (e in t) i = r[e], n = t[e], r !== n && (c && n && (yt.isPlainObject(n) || (o = Array.isArray(n))) ? (o ? (o = !1, s = i && Array.isArray(i) ? i : []) : s = i && yt.isPlainObject(i) ? i : {}, r[e] = yt.extend(c, s, n)) : void 0 !== n && (r[e] = n));
                return r
            }, yt.extend({
                expando: "jQuery" + ("3.2.1" + Math.random()).replace(/\D/g, ""),
                isReady: !0,
                error: function(t) {
                    throw new Error(t)
                },
                noop: function() {},
                isFunction: function(t) {
                    return "function" === yt.type(t)
                },
                isWindow: function(t) {
                    return null != t && t === t.window
                },
                isNumeric: function(t) {
                    var e = yt.type(t);
                    return ("number" === e || "string" === e) && !isNaN(t - parseFloat(t))
                },
                isPlainObject: function(t) {
                    var e, i;
                    return !(!t || "[object Object]" !== ft.call(t)) && (!(e = at(t)) || "function" == typeof(i = ht.call(e, "constructor") && e.constructor) && gt.call(i) === vt)
                },
                isEmptyObject: function(t) {
                    var e;
                    for (e in t) return !1;
                    return !0
                },
                type: function(t) {
                    return null == t ? t + "" : "object" == typeof t || "function" == typeof t ? pt[ft.call(t)] || "object" : typeof t
                },
                globalEval: function(t) {
                    r(t)
                },
                camelCase: function(t) {
                    return t.replace(wt, "ms-").replace(Tt, xt)
                },
                each: function(t, e) {
                    var i, n = 0;
                    if (a(t))
                        for (i = t.length; n < i && !1 !== e.call(t[n], n, t[n]); n++);
                    else
                        for (n in t)
                            if (!1 === e.call(t[n], n, t[n])) break;
                    return t
                },
                trim: function(t) {
                    return null == t ? "" : (t + "").replace(bt, "")
                },
                makeArray: function(t, e) {
                    var i = e || [];
                    return null != t && (a(Object(t)) ? yt.merge(i, "string" == typeof t ? [t] : t) : dt.call(i, t)), i
                },
                inArray: function(t, e, i) {
                    return null == e ? -1 : ut.call(e, t, i)
                },
                merge: function(t, e) {
                    for (var i = +e.length, n = 0, o = t.length; n < i; n++) t[o++] = e[n];
                    return t.length = o, t
                },
                grep: function(t, e, i) {
                    for (var n = [], o = 0, s = t.length, r = !i; o < s; o++) !e(t[o], o) !== r && n.push(t[o]);
                    return n
                },
                map: function(t, e, i) {
                    var n, o, s = 0,
                        r = [];
                    if (a(t))
                        for (n = t.length; s < n; s++) null != (o = e(t[s], s, i)) && r.push(o);
                    else
                        for (s in t) null != (o = e(t[s], s, i)) && r.push(o);
                    return ct.apply([], r)
                },
                guid: 1,
                proxy: function(t, e) {
                    var i, n, o;
                    if ("string" == typeof e && (i = t[e], e = t, t = i), yt.isFunction(t)) return n = lt.call(arguments, 2), o = function() {
                        return t.apply(e || this, n.concat(lt.call(arguments)))
                    }, o.guid = t.guid = t.guid || yt.guid++, o
                },
                now: Date.now,
                support: mt
            }), "function" == typeof Symbol && (yt.fn[Symbol.iterator] = st[Symbol.iterator]), yt.each("Boolean Number String Function Array Date RegExp Object Error Symbol".split(" "), (function(t, e) {
                pt["[object " + e + "]"] = e.toLowerCase()
            }));
            var kt = (function(t) {
                function e(t, e, i, n) {
                    var o, s, r, a, l, d, p, f = e && e.ownerDocument,
                        h = e ? e.nodeType : 9;
                    if (i = i || [], "string" != typeof t || !t || 1 !== h && 9 !== h && 11 !== h) return i;
                    if (!n && ((e ? e.ownerDocument || e : M) !== O && N(e), e = e || O, I)) {
                        if (11 !== h && (l = gt.exec(t)))
                            if (o = l[1]) {
                                if (9 === h) {
                                    if (!(r = e.getElementById(o))) return i;
                                    if (r.id === o) return i.push(r), i
                                } else if (f && (r = f.getElementById(o)) && q(e, r) && r.id === o) return i.push(r), i
                            } else {
                                if (l[2]) return J.apply(i, e.getElementsByTagName(t)), i;
                                if ((o = l[3]) && w.getElementsByClassName && e.getElementsByClassName) return J.apply(i, e.getElementsByClassName(o)), i
                            } if (w.qsa && !B[t + " "] && (!L || !L.test(t))) {
                            if (1 !== h) f = e, p = t;
                            else if ("object" !== e.nodeName.toLowerCase()) {
                                for ((a = e.getAttribute("id")) ? a = a.replace(bt, wt) : e.setAttribute("id", a = R), d = C(t), s = d.length; s--;) d[s] = "#" + a + " " + u(d[s]);
                                p = d.join(","), f = vt.test(t) && c(e.parentNode) || e
                            }
                            if (p) try {
                                return J.apply(i, f.querySelectorAll(p)), i
                            } catch (t) {} finally {
                                a === R && e.removeAttribute("id")
                            }
                        }
                    }
                    return $(t.replace(st, "$1"), e, i, n)
                }

                function i() {
                    function t(i, n) {
                        return e.push(i + " ") > T.cacheLength && delete t[e.shift()], t[i + " "] = n
                    }
                    var e = [];
                    return t
                }

                function n(t) {
                    return t[R] = !0, t
                }

                function o(t) {
                    var e = O.createElement("fieldset");
                    try {
                        return !!t(e)
                    } catch (t) {
                        return !1
                    } finally {
                        e.parentNode && e.parentNode.removeChild(e), e = null
                    }
                }

                function s(t, e) {
                    for (var i = t.split("|"), n = i.length; n--;) T.attrHandle[i[n]] = e
                }

                function r(t, e) {
                    var i = e && t,
                        n = i && 1 === t.nodeType && 1 === e.nodeType && t.sourceIndex - e.sourceIndex;
                    if (n) return n;
                    if (i)
                        for (; i = i.nextSibling;)
                            if (i === e) return -1;
                    return t ? 1 : -1
                }

                function a(t) {
                    return function(e) {
                        return "form" in e ? e.parentNode && !1 === e.disabled ? "label" in e ? "label" in e.parentNode ? e.parentNode.disabled === t : e.disabled === t : e.isDisabled === t || e.isDisabled !== !t && xt(e) === t : e.disabled === t : "label" in e && e.disabled === t
                    }
                }

                function l(t) {
                    return n((function(e) {
                        return e = +e, n((function(i, n) {
                            for (var o, s = t([], i.length, e), r = s.length; r--;) i[o = s[r]] && (i[o] = !(n[o] = i[o]))
                        }))
                    }))
                }

                function c(t) {
                    return t && void 0 !== t.getElementsByTagName && t
                }

                function d() {}

                function u(t) {
                    for (var e = 0, i = t.length, n = ""; e < i; e++) n += t[e].value;
                    return n
                }

                function p(t, e, i) {
                    var n = e.dir,
                        o = e.next,
                        s = o || n,
                        r = i && "parentNode" === s,
                        a = W++;
                    return e.first ? function(e, i, o) {
                        for (; e = e[n];)
                            if (1 === e.nodeType || r) return t(e, i, o);
                        return !1
                    } : function(e, i, l) {
                        var c, d, u, p = [F, a];
                        if (l) {
                            for (; e = e[n];)
                                if ((1 === e.nodeType || r) && t(e, i, l)) return !0
                        } else
                            for (; e = e[n];)
                                if (1 === e.nodeType || r)
                                    if (u = e[R] || (e[R] = {}), d = u[e.uniqueID] || (u[e.uniqueID] = {}), o && o === e.nodeName.toLowerCase()) e = e[n] || e;
                                    else {
                                        if ((c = d[s]) && c[0] === F && c[1] === a) return p[2] = c[2];
                                        if (d[s] = p, p[2] = t(e, i, l)) return !0
                                    } return !1
                    }
                }

                function f(t) {
                    return t.length > 1 ? function(e, i, n) {
                        for (var o = t.length; o--;)
                            if (!t[o](e, i, n)) return !1;
                        return !0
                    } : t[0]
                }

                function h(t, i, n) {
                    for (var o = 0, s = i.length; o < s; o++) e(t, i[o], n);
                    return n
                }

                function g(t, e, i, n, o) {
                    for (var s, r = [], a = 0, l = t.length, c = null != e; a < l; a++)(s = t[a]) && (i && !i(s, n, o) || (r.push(s), c && e.push(a)));
                    return r
                }

                function v(t, e, i, o, s, r) {
                    return o && !o[R] && (o = v(o)), s && !s[R] && (s = v(s, r)), n((function(n, r, a, l) {
                        var c, d, u, p = [],
                            f = [],
                            v = r.length,
                            m = n || h(e || "*", a.nodeType ? [a] : a, []),
                            y = !t || !n && e ? m : g(m, p, t, a, l),
                            b = i ? s || (n ? t : v || o) ? [] : r : y;
                        if (i && i(y, b, a, l), o)
                            for (c = g(b, f), o(c, [], a, l), d = c.length; d--;)(u = c[d]) && (b[f[d]] = !(y[f[d]] = u));
                        if (n) {
                            if (s || t) {
                                if (s) {
                                    for (c = [], d = b.length; d--;)(u = b[d]) && c.push(y[d] = u);
                                    s(null, b = [], c, l)
                                }
                                for (d = b.length; d--;)(u = b[d]) && (c = s ? K(n, u) : p[d]) > -1 && (n[c] = !(r[c] = u))
                            }
                        } else b = g(b === r ? b.splice(v, b.length) : b), s ? s(null, r, b, l) : J.apply(r, b)
                    }))
                }

                function m(t) {
                    for (var e, i, n, o = t.length, s = T.relative[t[0].type], r = s || T.relative[" "], a = s ? 1 : 0, l = p((function(t) {
                            return t === e
                        }), r, !0), c = p((function(t) {
                            return K(e, t) > -1
                        }), r, !0), d = [function(t, i, n) {
                            var o = !s && (n || i !== E) || ((e = i).nodeType ? l(t, i, n) : c(t, i, n));
                            return e = null, o
                        }]; a < o; a++)
                        if (i = T.relative[t[a].type]) d = [p(f(d), i)];
                        else {
                            if (i = T.filter[t[a].type].apply(null, t[a].matches), i[R]) {
                                for (n = ++a; n < o && !T.relative[t[n].type]; n++);
                                return v(a > 1 && f(d), a > 1 && u(t.slice(0, a - 1).concat({
                                    value: " " === t[a - 2].type ? "*" : ""
                                })).replace(st, "$1"), i, a < n && m(t.slice(a, n)), n < o && m(t = t.slice(n)), n < o && u(t))
                            }
                            d.push(i)
                        } return f(d)
                }

                function y(t, i) {
                    var o = i.length > 0,
                        s = t.length > 0,
                        r = function(n, r, a, l, c) {
                            var d, u, p, f = 0,
                                h = "0",
                                v = n && [],
                                m = [],
                                y = E,
                                b = n || s && T.find.TAG("*", c),
                                w = F += null == y ? 1 : Math.random() || .1,
                                x = b.length;
                            for (c && (E = r === O || r || c); h !== x && null != (d = b[h]); h++) {
                                if (s && d) {
                                    for (u = 0, r || d.ownerDocument === O || (N(d), a = !I); p = t[u++];)
                                        if (p(d, r || O, a)) {
                                            l.push(d);
                                            break
                                        } c && (F = w)
                                }
                                o && ((d = !p && d) && f--, n && v.push(d))
                            }
                            if (f += h, o && h !== f) {
                                for (u = 0; p = i[u++];) p(v, m, r, a);
                                if (n) {
                                    if (f > 0)
                                        for (; h--;) v[h] || m[h] || (m[h] = Y.call(l));
                                    m = g(m)
                                }
                                J.apply(l, m), c && !n && m.length > 0 && f + i.length > 1 && e.uniqueSort(l)
                            }
                            return c && (F = w, E = y), v
                        };
                    return o ? n(r) : r
                }
                var b, w, T, x, k, C, S, $, E, A, D, N, O, j, I, L, P, H, q, R = "sizzle" + 1 * new Date,
                    M = t.document,
                    F = 0,
                    W = 0,
                    z = i(),
                    U = i(),
                    B = i(),
                    _ = function(t, e) {
                        return t === e && (D = !0), 0
                    },
                    X = {}.hasOwnProperty,
                    V = [],
                    Y = V.pop,
                    G = V.push,
                    J = V.push,
                    Q = V.slice,
                    K = function(t, e) {
                        for (var i = 0, n = t.length; i < n; i++)
                            if (t[i] === e) return i;
                        return -1
                    },
                    Z = "checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped",
                    tt = "[\\x20\\t\\r\\n\\f]",
                    et = "(?:\\\\.|[\\w-]|[^\0-\\xa0])+",
                    it = "\\[" + tt + "*(" + et + ")(?:" + tt + "*([*^$|!~]?=)" + tt + "*(?:'((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|(" + et + "))|)" + tt + "*\\]",
                    nt = ":(" + et + ")(?:\\((('((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\")|((?:\\\\.|[^\\\\()[\\]]|" + it + ")*)|.*)\\)|)",
                    ot = new RegExp(tt + "+", "g"),
                    st = new RegExp("^" + tt + "+|((?:^|[^\\\\])(?:\\\\.)*)" + tt + "+$", "g"),
                    rt = new RegExp("^" + tt + "*," + tt + "*"),
                    at = new RegExp("^" + tt + "*([>+~]|" + tt + ")" + tt + "*"),
                    lt = new RegExp("=" + tt + "*([^\\]'\"]*?)" + tt + "*\\]", "g"),
                    ct = new RegExp(nt),
                    dt = new RegExp("^" + et + "$"),
                    ut = {
                        ID: new RegExp("^#(" + et + ")"),
                        CLASS: new RegExp("^\\.(" + et + ")"),
                        TAG: new RegExp("^(" + et + "|[*])"),
                        ATTR: new RegExp("^" + it),
                        PSEUDO: new RegExp("^" + nt),
                        CHILD: new RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\(" + tt + "*(even|odd|(([+-]|)(\\d*)n|)" + tt + "*(?:([+-]|)" + tt + "*(\\d+)|))" + tt + "*\\)|)", "i"),
                        bool: new RegExp("^(?:" + Z + ")$", "i"),
                        needsContext: new RegExp("^" + tt + "*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\(" + tt + "*((?:-\\d)?\\d*)" + tt + "*\\)|)(?=[^-]|$)", "i")
                    },
                    pt = /^(?:input|select|textarea|button)$/i,
                    ft = /^h\d$/i,
                    ht = /^[^{]+\{\s*\[native \w/,
                    gt = /^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,
                    vt = /[+~]/,
                    mt = new RegExp("\\\\([\\da-f]{1,6}" + tt + "?|(" + tt + ")|.)", "ig"),
                    yt = function(t, e, i) {
                        var n = "0x" + e - 65536;
                        return n !== n || i ? e : n < 0 ? String.fromCharCode(n + 65536) : String.fromCharCode(n >> 10 | 55296, 1023 & n | 56320)
                    },
                    bt = /([\0-\x1f\x7f]|^-?\d)|^-$|[^\0-\x1f\x7f-\uFFFF\w-]/g,
                    wt = function(t, e) {
                        return e ? "\0" === t ? "�" : t.slice(0, -1) + "\\" + t.charCodeAt(t.length - 1).toString(16) + " " : "\\" + t
                    },
                    Tt = function() {
                        N()
                    },
                    xt = p((function(t) {
                        return !0 === t.disabled && ("form" in t || "label" in t)
                    }), {
                        dir: "parentNode",
                        next: "legend"
                    });
                try {
                    J.apply(V = Q.call(M.childNodes), M.childNodes), V[M.childNodes.length].nodeType
                } catch (t) {
                    J = {
                        apply: V.length ? function(t, e) {
                            G.apply(t, Q.call(e))
                        } : function(t, e) {
                            for (var i = t.length, n = 0; t[i++] = e[n++];);
                            t.length = i - 1
                        }
                    }
                }
                w = e.support = {}, k = e.isXML = function(t) {
                    var e = t && (t.ownerDocument || t).documentElement;
                    return !!e && "HTML" !== e.nodeName
                }, N = e.setDocument = function(t) {
                    var e, i, n = t ? t.ownerDocument || t : M;
                    return n !== O && 9 === n.nodeType && n.documentElement ? (O = n, j = O.documentElement, I = !k(O), M !== O && (i = O.defaultView) && i.top !== i && (i.addEventListener ? i.addEventListener("unload", Tt, !1) : i.attachEvent && i.attachEvent("onunload", Tt)), w.attributes = o((function(t) {
                        return t.className = "i", !t.getAttribute("className")
                    })), w.getElementsByTagName = o((function(t) {
                        return t.appendChild(O.createComment("")), !t.getElementsByTagName("*").length
                    })), w.getElementsByClassName = ht.test(O.getElementsByClassName), w.getById = o((function(t) {
                        return j.appendChild(t).id = R, !O.getElementsByName || !O.getElementsByName(R).length
                    })), w.getById ? (T.filter.ID = function(t) {
                        var e = t.replace(mt, yt);
                        return function(t) {
                            return t.getAttribute("id") === e
                        }
                    }, T.find.ID = function(t, e) {
                        if (void 0 !== e.getElementById && I) {
                            var i = e.getElementById(t);
                            return i ? [i] : []
                        }
                    }) : (T.filter.ID = function(t) {
                        var e = t.replace(mt, yt);
                        return function(t) {
                            var i = void 0 !== t.getAttributeNode && t.getAttributeNode("id");
                            return i && i.value === e
                        }
                    }, T.find.ID = function(t, e) {
                        if (void 0 !== e.getElementById && I) {
                            var i, n, o, s = e.getElementById(t);
                            if (s) {
                                if ((i = s.getAttributeNode("id")) && i.value === t) return [s];
                                for (o = e.getElementsByName(t), n = 0; s = o[n++];)
                                    if ((i = s.getAttributeNode("id")) && i.value === t) return [s]
                            }
                            return []
                        }
                    }), T.find.TAG = w.getElementsByTagName ? function(t, e) {
                        return void 0 !== e.getElementsByTagName ? e.getElementsByTagName(t) : w.qsa ? e.querySelectorAll(t) : void 0
                    } : function(t, e) {
                        var i, n = [],
                            o = 0,
                            s = e.getElementsByTagName(t);
                        if ("*" === t) {
                            for (; i = s[o++];) 1 === i.nodeType && n.push(i);
                            return n
                        }
                        return s
                    }, T.find.CLASS = w.getElementsByClassName && function(t, e) {
                        if (void 0 !== e.getElementsByClassName && I) return e.getElementsByClassName(t)
                    }, P = [], L = [], (w.qsa = ht.test(O.querySelectorAll)) && (o((function(t) {
                        j.appendChild(t).innerHTML = "<a id='" + R + "'></a><select id='" + R + "-\r\\' msallowcapture=''><option selected=''></option></select>", t.querySelectorAll("[msallowcapture^='']").length && L.push("[*^$]=" + tt + "*(?:''|\"\")"), t.querySelectorAll("[selected]").length || L.push("\\[" + tt + "*(?:value|" + Z + ")"), t.querySelectorAll("[id~=" + R + "-]").length || L.push("~="), t.querySelectorAll(":checked").length || L.push(":checked"), t.querySelectorAll("a#" + R + "+*").length || L.push(".#.+[+~]")
                    })), o((function(t) {
                        t.innerHTML = "<a href='' disabled='disabled'></a><select disabled='disabled'><option/></select>";
                        var e = O.createElement("input");
                        e.setAttribute("type", "hidden"), t.appendChild(e).setAttribute("name", "D"), t.querySelectorAll("[name=d]").length && L.push("name" + tt + "*[*^$|!~]?="), 2 !== t.querySelectorAll(":enabled").length && L.push(":enabled", ":disabled"), j.appendChild(t).disabled = !0, 2 !== t.querySelectorAll(":disabled").length && L.push(":enabled", ":disabled"), t.querySelectorAll("*,:x"), L.push(",.*:")
                    }))), (w.matchesSelector = ht.test(H = j.matches || j.webkitMatchesSelector || j.mozMatchesSelector || j.oMatchesSelector || j.msMatchesSelector)) && o((function(t) {
                        w.disconnectedMatch = H.call(t, "*"), H.call(t, "[s!='']:x"), P.push("!=", nt)
                    })), L = L.length && new RegExp(L.join("|")), P = P.length && new RegExp(P.join("|")), e = ht.test(j.compareDocumentPosition), q = e || ht.test(j.contains) ? function(t, e) {
                        var i = 9 === t.nodeType ? t.documentElement : t,
                            n = e && e.parentNode;
                        return t === n || !(!n || 1 !== n.nodeType || !(i.contains ? i.contains(n) : t.compareDocumentPosition && 16 & t.compareDocumentPosition(n)))
                    } : function(t, e) {
                        if (e)
                            for (; e = e.parentNode;)
                                if (e === t) return !0;
                        return !1
                    }, _ = e ? function(t, e) {
                        if (t === e) return D = !0, 0;
                        var i = !t.compareDocumentPosition - !e.compareDocumentPosition;
                        return i || (i = (t.ownerDocument || t) === (e.ownerDocument || e) ? t.compareDocumentPosition(e) : 1, 1 & i || !w.sortDetached && e.compareDocumentPosition(t) === i ? t === O || t.ownerDocument === M && q(M, t) ? -1 : e === O || e.ownerDocument === M && q(M, e) ? 1 : A ? K(A, t) - K(A, e) : 0 : 4 & i ? -1 : 1)
                    } : function(t, e) {
                        if (t === e) return D = !0, 0;
                        var i, n = 0,
                            o = t.parentNode,
                            s = e.parentNode,
                            a = [t],
                            l = [e];
                        if (!o || !s) return t === O ? -1 : e === O ? 1 : o ? -1 : s ? 1 : A ? K(A, t) - K(A, e) : 0;
                        if (o === s) return r(t, e);
                        for (i = t; i = i.parentNode;) a.unshift(i);
                        for (i = e; i = i.parentNode;) l.unshift(i);
                        for (; a[n] === l[n];) n++;
                        return n ? r(a[n], l[n]) : a[n] === M ? -1 : l[n] === M ? 1 : 0
                    }, O) : O
                }, e.matches = function(t, i) {
                    return e(t, null, null, i)
                }, e.matchesSelector = function(t, i) {
                    if ((t.ownerDocument || t) !== O && N(t), i = i.replace(lt, "='$1']"), w.matchesSelector && I && !B[i + " "] && (!P || !P.test(i)) && (!L || !L.test(i))) try {
                        var n = H.call(t, i);
                        if (n || w.disconnectedMatch || t.document && 11 !== t.document.nodeType) return n
                    } catch (t) {}
                    return e(i, O, null, [t]).length > 0
                }, e.contains = function(t, e) {
                    return (t.ownerDocument || t) !== O && N(t), q(t, e)
                }, e.attr = function(t, e) {
                    (t.ownerDocument || t) !== O && N(t);
                    var i = T.attrHandle[e.toLowerCase()],
                        n = i && X.call(T.attrHandle, e.toLowerCase()) ? i(t, e, !I) : void 0;
                    return void 0 !== n ? n : w.attributes || !I ? t.getAttribute(e) : (n = t.getAttributeNode(e)) && n.specified ? n.value : null
                }, e.escape = function(t) {
                    return (t + "").replace(bt, wt)
                }, e.error = function(t) {
                    throw new Error("Syntax error, unrecognized expression: " + t)
                }, e.uniqueSort = function(t) {
                    var e, i = [],
                        n = 0,
                        o = 0;
                    if (D = !w.detectDuplicates, A = !w.sortStable && t.slice(0), t.sort(_), D) {
                        for (; e = t[o++];) e === t[o] && (n = i.push(o));
                        for (; n--;) t.splice(i[n], 1)
                    }
                    return A = null, t
                }, x = e.getText = function(t) {
                    var e, i = "",
                        n = 0,
                        o = t.nodeType;
                    if (o) {
                        if (1 === o || 9 === o || 11 === o) {
                            if ("string" == typeof t.textContent) return t.textContent;
                            for (t = t.firstChild; t; t = t.nextSibling) i += x(t)
                        } else if (3 === o || 4 === o) return t.nodeValue
                    } else
                        for (; e = t[n++];) i += x(e);
                    return i
                }, T = e.selectors = {
                    cacheLength: 50,
                    createPseudo: n,
                    match: ut,
                    attrHandle: {},
                    find: {},
                    relative: {
                        ">": {
                            dir: "parentNode",
                            first: !0
                        },
                        " ": {
                            dir: "parentNode"
                        },
                        "+": {
                            dir: "previousSibling",
                            first: !0
                        },
                        "~": {
                            dir: "previousSibling"
                        }
                    },
                    preFilter: {
                        ATTR: function(t) {
                            return t[1] = t[1].replace(mt, yt), t[3] = (t[3] || t[4] || t[5] || "").replace(mt, yt), "~=" === t[2] && (t[3] = " " + t[3] + " "), t.slice(0, 4)
                        },
                        CHILD: function(t) {
                            return t[1] = t[1].toLowerCase(), "nth" === t[1].slice(0, 3) ? (t[3] || e.error(t[0]), t[4] = +(t[4] ? t[5] + (t[6] || 1) : 2 * ("even" === t[3] || "odd" === t[3])), t[5] = +(t[7] + t[8] || "odd" === t[3])) : t[3] && e.error(t[0]), t
                        },
                        PSEUDO: function(t) {
                            var e, i = !t[6] && t[2];
                            return ut.CHILD.test(t[0]) ? null : (t[3] ? t[2] = t[4] || t[5] || "" : i && ct.test(i) && (e = C(i, !0)) && (e = i.indexOf(")", i.length - e) - i.length) && (t[0] = t[0].slice(0, e), t[2] = i.slice(0, e)), t.slice(0, 3))
                        }
                    },
                    filter: {
                        TAG: function(t) {
                            var e = t.replace(mt, yt).toLowerCase();
                            return "*" === t ? function() {
                                return !0
                            } : function(t) {
                                return t.nodeName && t.nodeName.toLowerCase() === e
                            }
                        },
                        CLASS: function(t) {
                            var e = z[t + " "];
                            return e || (e = new RegExp("(^|" + tt + ")" + t + "(" + tt + "|$)")) && z(t, (function(t) {
                                return e.test("string" == typeof t.className && t.className || void 0 !== t.getAttribute && t.getAttribute("class") || "")
                            }))
                        },
                        ATTR: function(t, i, n) {
                            return function(o) {
                                var s = e.attr(o, t);
                                return null == s ? "!=" === i : !i || (s += "", "=" === i ? s === n : "!=" === i ? s !== n : "^=" === i ? n && 0 === s.indexOf(n) : "*=" === i ? n && s.indexOf(n) > -1 : "$=" === i ? n && s.slice(-n.length) === n : "~=" === i ? (" " + s.replace(ot, " ") + " ").indexOf(n) > -1 : "|=" === i && (s === n || s.slice(0, n.length + 1) === n + "-"))
                            }
                        },
                        CHILD: function(t, e, i, n, o) {
                            var s = "nth" !== t.slice(0, 3),
                                r = "last" !== t.slice(-4),
                                a = "of-type" === e;
                            return 1 === n && 0 === o ? function(t) {
                                return !!t.parentNode
                            } : function(e, i, l) {
                                var c, d, u, p, f, h, g = s !== r ? "nextSibling" : "previousSibling",
                                    v = e.parentNode,
                                    m = a && e.nodeName.toLowerCase(),
                                    y = !l && !a,
                                    b = !1;
                                if (v) {
                                    if (s) {
                                        for (; g;) {
                                            for (p = e; p = p[g];)
                                                if (a ? p.nodeName.toLowerCase() === m : 1 === p.nodeType) return !1;
                                            h = g = "only" === t && !h && "nextSibling"
                                        }
                                        return !0
                                    }
                                    if (h = [r ? v.firstChild : v.lastChild], r && y) {
                                        for (p = v, u = p[R] || (p[R] = {}), d = u[p.uniqueID] || (u[p.uniqueID] = {}), c = d[t] || [], f = c[0] === F && c[1], b = f && c[2], p = f && v.childNodes[f]; p = ++f && p && p[g] || (b = f = 0) || h.pop();)
                                            if (1 === p.nodeType && ++b && p === e) {
                                                d[t] = [F, f, b];
                                                break
                                            }
                                    } else if (y && (p = e, u = p[R] || (p[R] = {}), d = u[p.uniqueID] || (u[p.uniqueID] = {}), c = d[t] || [], f = c[0] === F && c[1], b = f), !1 === b)
                                        for (;
                                            (p = ++f && p && p[g] || (b = f = 0) || h.pop()) && ((a ? p.nodeName.toLowerCase() !== m : 1 !== p.nodeType) || !++b || (y && (u = p[R] || (p[R] = {}), d = u[p.uniqueID] || (u[p.uniqueID] = {}), d[t] = [F, b]), p !== e)););
                                    return (b -= o) === n || b % n == 0 && b / n >= 0
                                }
                            }
                        },
                        PSEUDO: function(t, i) {
                            var o, s = T.pseudos[t] || T.setFilters[t.toLowerCase()] || e.error("unsupported pseudo: " + t);
                            return s[R] ? s(i) : s.length > 1 ? (o = [t, t, "", i], T.setFilters.hasOwnProperty(t.toLowerCase()) ? n((function(t, e) {
                                for (var n, o = s(t, i), r = o.length; r--;) n = K(t, o[r]), t[n] = !(e[n] = o[r])
                            })) : function(t) {
                                return s(t, 0, o)
                            }) : s
                        }
                    },
                    pseudos: {
                        not: n((function(t) {
                            var e = [],
                                i = [],
                                o = S(t.replace(st, "$1"));
                            return o[R] ? n((function(t, e, i, n) {
                                for (var s, r = o(t, null, n, []), a = t.length; a--;)(s = r[a]) && (t[a] = !(e[a] = s))
                            })) : function(t, n, s) {
                                return e[0] = t, o(e, null, s, i), e[0] = null, !i.pop()
                            }
                        })),
                        has: n((function(t) {
                            return function(i) {
                                return e(t, i).length > 0
                            }
                        })),
                        contains: n((function(t) {
                            return t = t.replace(mt, yt),
                                function(e) {
                                    return (e.textContent || e.innerText || x(e)).indexOf(t) > -1
                                }
                        })),
                        lang: n((function(t) {
                            return dt.test(t || "") || e.error("unsupported lang: " + t), t = t.replace(mt, yt).toLowerCase(),
                                function(e) {
                                    var i;
                                    do {
                                        if (i = I ? e.lang : e.getAttribute("xml:lang") || e.getAttribute("lang")) return (i = i.toLowerCase()) === t || 0 === i.indexOf(t + "-")
                                    } while ((e = e.parentNode) && 1 === e.nodeType);
                                    return !1
                                }
                        })),
                        target: function(e) {
                            var i = t.location && t.location.hash;
                            return i && i.slice(1) === e.id
                        },
                        root: function(t) {
                            return t === j
                        },
                        focus: function(t) {
                            return t === O.activeElement && (!O.hasFocus || O.hasFocus()) && !!(t.type || t.href || ~t.tabIndex)
                        },
                        enabled: a(!1),
                        disabled: a(!0),
                        checked: function(t) {
                            var e = t.nodeName.toLowerCase();
                            return "input" === e && !!t.checked || "option" === e && !!t.selected
                        },
                        selected: function(t) {
                            return t.parentNode && t.parentNode.selectedIndex, !0 === t.selected
                        },
                        empty: function(t) {
                            for (t = t.firstChild; t; t = t.nextSibling)
                                if (t.nodeType < 6) return !1;
                            return !0
                        },
                        parent: function(t) {
                            return !T.pseudos.empty(t)
                        },
                        header: function(t) {
                            return ft.test(t.nodeName)
                        },
                        input: function(t) {
                            return pt.test(t.nodeName)
                        },
                        button: function(t) {
                            var e = t.nodeName.toLowerCase();
                            return "input" === e && "button" === t.type || "button" === e
                        },
                        text: function(t) {
                            var e;
                            return "input" === t.nodeName.toLowerCase() && "text" === t.type && (null == (e = t.getAttribute("type")) || "text" === e.toLowerCase())
                        },
                        first: l((function() {
                            return [0]
                        })),
                        last: l((function(t, e) {
                            return [e - 1]
                        })),
                        eq: l((function(t, e, i) {
                            return [i < 0 ? i + e : i]
                        })),
                        even: l((function(t, e) {
                            for (var i = 0; i < e; i += 2) t.push(i);
                            return t
                        })),
                        odd: l((function(t, e) {
                            for (var i = 1; i < e; i += 2) t.push(i);
                            return t
                        })),
                        lt: l((function(t, e, i) {
                            for (var n = i < 0 ? i + e : i; --n >= 0;) t.push(n);
                            return t
                        })),
                        gt: l((function(t, e, i) {
                            for (var n = i < 0 ? i + e : i; ++n < e;) t.push(n);
                            return t
                        }))
                    }
                }, T.pseudos.nth = T.pseudos.eq;
                for (b in {
                        radio: !0,
                        checkbox: !0,
                        file: !0,
                        password: !0,
                        image: !0
                    }) T.pseudos[b] = (function(t) {
                    return function(e) {
                        return "input" === e.nodeName.toLowerCase() && e.type === t
                    }
                })(b);
                for (b in {
                        submit: !0,
                        reset: !0
                    }) T.pseudos[b] = (function(t) {
                    return function(e) {
                        var i = e.nodeName.toLowerCase();
                        return ("input" === i || "button" === i) && e.type === t
                    }
                })(b);
                return d.prototype = T.filters = T.pseudos, T.setFilters = new d, C = e.tokenize = function(t, i) {
                    var n, o, s, r, a, l, c, d = U[t + " "];
                    if (d) return i ? 0 : d.slice(0);
                    for (a = t, l = [], c = T.preFilter; a;) {
                        n && !(o = rt.exec(a)) || (o && (a = a.slice(o[0].length) || a), l.push(s = [])), n = !1, (o = at.exec(a)) && (n = o.shift(), s.push({
                            value: n,
                            type: o[0].replace(st, " ")
                        }), a = a.slice(n.length));
                        for (r in T.filter) !(o = ut[r].exec(a)) || c[r] && !(o = c[r](o)) || (n = o.shift(), s.push({
                            value: n,
                            type: r,
                            matches: o
                        }), a = a.slice(n.length));
                        if (!n) break
                    }
                    return i ? a.length : a ? e.error(t) : U(t, l).slice(0)
                }, S = e.compile = function(t, e) {
                    var i, n = [],
                        o = [],
                        s = B[t + " "];
                    if (!s) {
                        for (e || (e = C(t)), i = e.length; i--;) s = m(e[i]), s[R] ? n.push(s) : o.push(s);
                        s = B(t, y(o, n)), s.selector = t
                    }
                    return s
                }, $ = e.select = function(t, e, i, n) {
                    var o, s, r, a, l, d = "function" == typeof t && t,
                        p = !n && C(t = d.selector || t);
                    if (i = i || [], 1 === p.length) {
                        if (s = p[0] = p[0].slice(0), s.length > 2 && "ID" === (r = s[0]).type && 9 === e.nodeType && I && T.relative[s[1].type]) {
                            if (!(e = (T.find.ID(r.matches[0].replace(mt, yt), e) || [])[0])) return i;
                            d && (e = e.parentNode), t = t.slice(s.shift().value.length)
                        }
                        for (o = ut.needsContext.test(t) ? 0 : s.length; o-- && (r = s[o], !T.relative[a = r.type]);)
                            if ((l = T.find[a]) && (n = l(r.matches[0].replace(mt, yt), vt.test(s[0].type) && c(e.parentNode) || e))) {
                                if (s.splice(o, 1), !(t = n.length && u(s))) return J.apply(i, n), i;
                                break
                            }
                    }
                    return (d || S(t, p))(n, e, !I, i, !e || vt.test(t) && c(e.parentNode) || e), i
                }, w.sortStable = R.split("").sort(_).join("") === R, w.detectDuplicates = !!D, N(), w.sortDetached = o((function(t) {
                    return 1 & t.compareDocumentPosition(O.createElement("fieldset"))
                })), o((function(t) {
                    return t.innerHTML = "<a href='#'></a>", "#" === t.firstChild.getAttribute("href")
                })) || s("type|href|height|width", (function(t, e, i) {
                    if (!i) return t.getAttribute(e, "type" === e.toLowerCase() ? 1 : 2)
                })), w.attributes && o((function(t) {
                    return t.innerHTML = "<input/>", t.firstChild.setAttribute("value", ""), "" === t.firstChild.getAttribute("value")
                })) || s("value", (function(t, e, i) {
                    if (!i && "input" === t.nodeName.toLowerCase()) return t.defaultValue
                })), o((function(t) {
                    return null == t.getAttribute("disabled")
                })) || s(Z, (function(t, e, i) {
                    var n;
                    if (!i) return !0 === t[e] ? e.toLowerCase() : (n = t.getAttributeNode(e)) && n.specified ? n.value : null
                })), e
            })(i);
            yt.find = kt, yt.expr = kt.selectors, yt.expr[":"] = yt.expr.pseudos, yt.uniqueSort = yt.unique = kt.uniqueSort, yt.text = kt.getText, yt.isXMLDoc = kt.isXML, yt.contains = kt.contains, yt.escapeSelector = kt.escape;
            var Ct = function(t, e, i) {
                    for (var n = [], o = void 0 !== i;
                        (t = t[e]) && 9 !== t.nodeType;)
                        if (1 === t.nodeType) {
                            if (o && yt(t).is(i)) break;
                            n.push(t)
                        } return n
                },
                St = function(t, e) {
                    for (var i = []; t; t = t.nextSibling) 1 === t.nodeType && t !== e && i.push(t);
                    return i
                },
                $t = yt.expr.match.needsContext,
                Et = /^<([a-z][^\/\0>:\x20\t\r\n\f]*)[\x20\t\r\n\f]*\/?>(?:<\/\1>|)$/i,
                At = /^.[^:#\[\.,]*$/;
            yt.filter = function(t, e, i) {
                var n = e[0];
                return i && (t = ":not(" + t + ")"), 1 === e.length && 1 === n.nodeType ? yt.find.matchesSelector(n, t) ? [n] : [] : yt.find.matches(t, yt.grep(e, (function(t) {
                    return 1 === t.nodeType
                })))
            }, yt.fn.extend({
                find: function(t) {
                    var e, i, n = this.length,
                        o = this;
                    if ("string" != typeof t) return this.pushStack(yt(t).filter((function() {
                        for (e = 0; e < n; e++)
                            if (yt.contains(o[e], this)) return !0
                    })));
                    for (i = this.pushStack([]), e = 0; e < n; e++) yt.find(t, o[e], i);
                    return n > 1 ? yt.uniqueSort(i) : i
                },
                filter: function(t) {
                    return this.pushStack(c(this, t || [], !1))
                },
                not: function(t) {
                    return this.pushStack(c(this, t || [], !0))
                },
                is: function(t) {
                    return !!c(this, "string" == typeof t && $t.test(t) ? yt(t) : t || [], !1).length
                }
            });
            var Dt, Nt = /^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]+))$/;
            (yt.fn.init = function(t, e, i) {
                var n, o;
                if (!t) return this;
                if (i = i || Dt, "string" == typeof t) {
                    if (!(n = "<" === t[0] && ">" === t[t.length - 1] && t.length >= 3 ? [null, t, null] : Nt.exec(t)) || !n[1] && e) return !e || e.jquery ? (e || i).find(t) : this.constructor(e).find(t);
                    if (n[1]) {
                        if (e = e instanceof yt ? e[0] : e, yt.merge(this, yt.parseHTML(n[1], e && e.nodeType ? e.ownerDocument || e : rt, !0)), Et.test(n[1]) && yt.isPlainObject(e))
                            for (n in e) yt.isFunction(this[n]) ? this[n](e[n]) : this.attr(n, e[n]);
                        return this
                    }
                    return o = rt.getElementById(n[2]), o && (this[0] = o, this.length = 1), this
                }
                return t.nodeType ? (this[0] = t, this.length = 1, this) : yt.isFunction(t) ? void 0 !== i.ready ? i.ready(t) : t(yt) : yt.makeArray(t, this)
            }).prototype = yt.fn, Dt = yt(rt);
            var Ot = /^(?:parents|prev(?:Until|All))/,
                jt = {
                    children: !0,
                    contents: !0,
                    next: !0,
                    prev: !0
                };
            yt.fn.extend({
                has: function(t) {
                    var e = yt(t, this),
                        i = e.length;
                    return this.filter((function() {
                        for (var t = 0; t < i; t++)
                            if (yt.contains(this, e[t])) return !0
                    }))
                },
                closest: function(t, e) {
                    var i, n = 0,
                        o = this.length,
                        s = [],
                        r = "string" != typeof t && yt(t);
                    if (!$t.test(t))
                        for (; n < o; n++)
                            for (i = this[n]; i && i !== e; i = i.parentNode)
                                if (i.nodeType < 11 && (r ? r.index(i) > -1 : 1 === i.nodeType && yt.find.matchesSelector(i, t))) {
                                    s.push(i);
                                    break
                                } return this.pushStack(s.length > 1 ? yt.uniqueSort(s) : s)
                },
                index: function(t) {
                    return t ? "string" == typeof t ? ut.call(yt(t), this[0]) : ut.call(this, t.jquery ? t[0] : t) : this[0] && this[0].parentNode ? this.first().prevAll().length : -1
                },
                add: function(t, e) {
                    return this.pushStack(yt.uniqueSort(yt.merge(this.get(), yt(t, e))))
                },
                addBack: function(t) {
                    return this.add(null == t ? this.prevObject : this.prevObject.filter(t))
                }
            }), yt.each({
                parent: function(t) {
                    var e = t.parentNode;
                    return e && 11 !== e.nodeType ? e : null
                },
                parents: function(t) {
                    return Ct(t, "parentNode")
                },
                parentsUntil: function(t, e, i) {
                    return Ct(t, "parentNode", i)
                },
                next: function(t) {
                    return d(t, "nextSibling")
                },
                prev: function(t) {
                    return d(t, "previousSibling")
                },
                nextAll: function(t) {
                    return Ct(t, "nextSibling")
                },
                prevAll: function(t) {
                    return Ct(t, "previousSibling")
                },
                nextUntil: function(t, e, i) {
                    return Ct(t, "nextSibling", i)
                },
                prevUntil: function(t, e, i) {
                    return Ct(t, "previousSibling", i)
                },
                siblings: function(t) {
                    return St((t.parentNode || {}).firstChild, t)
                },
                children: function(t) {
                    return St(t.firstChild)
                },
                contents: function(t) {
                    return l(t, "iframe") ? t.contentDocument : (l(t, "template") && (t = t.content || t), yt.merge([], t.childNodes))
                }
            }, (function(t, e) {
                yt.fn[t] = function(i, n) {
                    var o = yt.map(this, e, i);
                    return "Until" !== t.slice(-5) && (n = i), n && "string" == typeof n && (o = yt.filter(n, o)), this.length > 1 && (jt[t] || yt.uniqueSort(o), Ot.test(t) && o.reverse()), this.pushStack(o)
                }
            }));
            var It = /[^\x20\t\r\n\f]+/g;
            yt.Callbacks = function(t) {
                t = "string" == typeof t ? u(t) : yt.extend({}, t);
                var e, i, n, o, s = [],
                    r = [],
                    a = -1,
                    l = function() {
                        for (o = o || t.once, n = e = !0; r.length; a = -1)
                            for (i = r.shift(); ++a < s.length;) !1 === s[a].apply(i[0], i[1]) && t.stopOnFalse && (a = s.length, i = !1);
                        t.memory || (i = !1), e = !1, o && (s = i ? [] : "")
                    },
                    c = {
                        add: function() {
                            return s && (i && !e && (a = s.length - 1, r.push(i)), (function e(i) {
                                yt.each(i, (function(i, n) {
                                    yt.isFunction(n) ? t.unique && c.has(n) || s.push(n) : n && n.length && "string" !== yt.type(n) && e(n)
                                }))
                            })(arguments), i && !e && l()), this
                        },
                        remove: function() {
                            return yt.each(arguments, (function(t, e) {
                                for (var i;
                                    (i = yt.inArray(e, s, i)) > -1;) s.splice(i, 1), i <= a && a--
                            })), this
                        },
                        has: function(t) {
                            return t ? yt.inArray(t, s) > -1 : s.length > 0
                        },
                        empty: function() {
                            return s && (s = []), this
                        },
                        disable: function() {
                            return o = r = [], s = i = "", this
                        },
                        disabled: function() {
                            return !s
                        },
                        lock: function() {
                            return o = r = [], i || e || (s = i = ""), this
                        },
                        locked: function() {
                            return !!o
                        },
                        fireWith: function(t, i) {
                            return o || (i = i || [], i = [t, i.slice ? i.slice() : i], r.push(i), e || l()), this
                        },
                        fire: function() {
                            return c.fireWith(this, arguments), this
                        },
                        fired: function() {
                            return !!n
                        }
                    };
                return c
            }, yt.extend({
                Deferred: function(t) {
                    var e = [
                            ["notify", "progress", yt.Callbacks("memory"), yt.Callbacks("memory"), 2],
                            ["resolve", "done", yt.Callbacks("once memory"), yt.Callbacks("once memory"), 0, "resolved"],
                            ["reject", "fail", yt.Callbacks("once memory"), yt.Callbacks("once memory"), 1, "rejected"]
                        ],
                        n = "pending",
                        o = {
                            state: function() {
                                return n
                            },
                            always: function() {
                                return s.done(arguments).fail(arguments), this
                            },
                            catch: function(t) {
                                return o.then(null, t)
                            },
                            pipe: function() {
                                var t = arguments;
                                return yt.Deferred((function(i) {
                                    yt.each(e, (function(e, n) {
                                        var o = yt.isFunction(t[n[4]]) && t[n[4]];
                                        s[n[1]]((function() {
                                            var t = o && o.apply(this, arguments);
                                            t && yt.isFunction(t.promise) ? t.promise().progress(i.notify).done(i.resolve).fail(i.reject) : i[n[0] + "With"](this, o ? [t] : arguments)
                                        }))
                                    })), t = null
                                })).promise()
                            },
                            then: function(t, n, o) {
                                function s(t, e, n, o) {
                                    return function() {
                                        var a = this,
                                            l = arguments,
                                            c = function() {
                                                var i, c;
                                                if (!(t < r)) {
                                                    if ((i = n.apply(a, l)) === e.promise()) throw new TypeError("Thenable self-resolution");
                                                    c = i && ("object" == typeof i || "function" == typeof i) && i.then, yt.isFunction(c) ? o ? c.call(i, s(r, e, p, o), s(r, e, f, o)) : (r++, c.call(i, s(r, e, p, o), s(r, e, f, o), s(r, e, p, e.notifyWith))) : (n !== p && (a = void 0, l = [i]), (o || e.resolveWith)(a, l))
                                                }
                                            },
                                            d = o ? c : function() {
                                                try {
                                                    c()
                                                } catch (i) {
                                                    yt.Deferred.exceptionHook && yt.Deferred.exceptionHook(i, d.stackTrace), t + 1 >= r && (n !== f && (a = void 0, l = [i]), e.rejectWith(a, l))
                                                }
                                            };
                                        t ? d() : (yt.Deferred.getStackHook && (d.stackTrace = yt.Deferred.getStackHook()), i.setTimeout(d))
                                    }
                                }
                                var r = 0;
                                return yt.Deferred((function(i) {
                                    e[0][3].add(s(0, i, yt.isFunction(o) ? o : p, i.notifyWith)), e[1][3].add(s(0, i, yt.isFunction(t) ? t : p)), e[2][3].add(s(0, i, yt.isFunction(n) ? n : f))
                                })).promise()
                            },
                            promise: function(t) {
                                return null != t ? yt.extend(t, o) : o
                            }
                        },
                        s = {};
                    return yt.each(e, (function(t, i) {
                        var r = i[2],
                            a = i[5];
                        o[i[1]] = r.add, a && r.add((function() {
                            n = a
                        }), e[3 - t][2].disable, e[0][2].lock), r.add(i[3].fire), s[i[0]] = function() {
                            return s[i[0] + "With"](this === s ? void 0 : this, arguments), this
                        }, s[i[0] + "With"] = r.fireWith
                    })), o.promise(s), t && t.call(s, s), s
                },
                when: function(t) {
                    var e = arguments.length,
                        i = e,
                        n = Array(i),
                        o = lt.call(arguments),
                        s = yt.Deferred(),
                        r = function(t) {
                            return function(i) {
                                n[t] = this, o[t] = arguments.length > 1 ? lt.call(arguments) : i, --e || s.resolveWith(n, o)
                            }
                        };
                    if (e <= 1 && (h(t, s.done(r(i)).resolve, s.reject, !e), "pending" === s.state() || yt.isFunction(o[i] && o[i].then))) return s.then();
                    for (; i--;) h(o[i], r(i), s.reject);
                    return s.promise()
                }
            });
            var Lt = /^(Eval|Internal|Range|Reference|Syntax|Type|URI)Error$/;
            yt.Deferred.exceptionHook = function(t, e) {
                i.console && i.console.warn && t && Lt.test(t.name) && i.console.warn("jQuery.Deferred exception: " + t.message, t.stack, e)
            }, yt.readyException = function(t) {
                i.setTimeout((function() {
                    throw t
                }))
            };
            var Pt = yt.Deferred();
            yt.fn.ready = function(t) {
                return Pt.then(t).catch((function(t) {
                    yt.readyException(t)
                })), this
            }, yt.extend({
                isReady: !1,
                readyWait: 1,
                ready: function(t) {
                    (!0 === t ? --yt.readyWait : yt.isReady) || (yt.isReady = !0, !0 !== t && --yt.readyWait > 0 || Pt.resolveWith(rt, [yt]))
                }
            }), yt.ready.then = Pt.then, "complete" === rt.readyState || "loading" !== rt.readyState && !rt.documentElement.doScroll ? i.setTimeout(yt.ready) : (rt.addEventListener("DOMContentLoaded", g), i.addEventListener("load", g));
            var Ht = function(t, e, i, n, o, s, r) {
                    var a = 0,
                        l = t.length,
                        c = null == i;
                    if ("object" === yt.type(i)) {
                        o = !0;
                        for (a in i) Ht(t, e, a, i[a], !0, s, r)
                    } else if (void 0 !== n && (o = !0, yt.isFunction(n) || (r = !0), c && (r ? (e.call(t, n), e = null) : (c = e, e = function(t, e, i) {
                            return c.call(yt(t), i)
                        })), e))
                        for (; a < l; a++) e(t[a], i, r ? n : n.call(t[a], a, e(t[a], i)));
                    return o ? t : c ? e.call(t) : l ? e(t[0], i) : s
                },
                qt = function(t) {
                    return 1 === t.nodeType || 9 === t.nodeType || !+t.nodeType
                };
            v.uid = 1, v.prototype = {
                cache: function(t) {
                    var e = t[this.expando];
                    return e || (e = {}, qt(t) && (t.nodeType ? t[this.expando] = e : Object.defineProperty(t, this.expando, {
                        value: e,
                        configurable: !0
                    }))), e
                },
                set: function(t, e, i) {
                    var n, o = this.cache(t);
                    if ("string" == typeof e) o[yt.camelCase(e)] = i;
                    else
                        for (n in e) o[yt.camelCase(n)] = e[n];
                    return o
                },
                get: function(t, e) {
                    return void 0 === e ? this.cache(t) : t[this.expando] && t[this.expando][yt.camelCase(e)]
                },
                access: function(t, e, i) {
                    return void 0 === e || e && "string" == typeof e && void 0 === i ? this.get(t, e) : (this.set(t, e, i), void 0 !== i ? i : e)
                },
                remove: function(t, e) {
                    var i, n = t[this.expando];
                    if (void 0 !== n) {
                        if (void 0 !== e) {
                            Array.isArray(e) ? e = e.map(yt.camelCase) : (e = yt.camelCase(e), e = e in n ? [e] : e.match(It) || []), i = e.length;
                            for (; i--;) delete n[e[i]]
                        }(void 0 === e || yt.isEmptyObject(n)) && (t.nodeType ? t[this.expando] = void 0 : delete t[this.expando])
                    }
                },
                hasData: function(t) {
                    var e = t[this.expando];
                    return void 0 !== e && !yt.isEmptyObject(e)
                }
            };
            var Rt = new v,
                Mt = new v,
                Ft = /^(?:\{[\w\W]*\}|\[[\w\W]*\])$/,
                Wt = /[A-Z]/g;
            yt.extend({
                hasData: function(t) {
                    return Mt.hasData(t) || Rt.hasData(t)
                },
                data: function(t, e, i) {
                    return Mt.access(t, e, i)
                },
                removeData: function(t, e) {
                    Mt.remove(t, e)
                },
                _data: function(t, e, i) {
                    return Rt.access(t, e, i)
                },
                _removeData: function(t, e) {
                    Rt.remove(t, e)
                }
            }), yt.fn.extend({
                data: function(t, e) {
                    var i, n, o, s = this[0],
                        r = s && s.attributes;
                    if (void 0 === t) {
                        if (this.length && (o = Mt.get(s), 1 === s.nodeType && !Rt.get(s, "hasDataAttrs"))) {
                            for (i = r.length; i--;) r[i] && (n = r[i].name, 0 === n.indexOf("data-") && (n = yt.camelCase(n.slice(5)), y(s, n, o[n])));
                            Rt.set(s, "hasDataAttrs", !0)
                        }
                        return o
                    }
                    return "object" == typeof t ? this.each((function() {
                        Mt.set(this, t)
                    })) : Ht(this, (function(e) {
                        var i;
                        if (s && void 0 === e) {
                            if (void 0 !== (i = Mt.get(s, t))) return i;
                            if (void 0 !== (i = y(s, t))) return i
                        } else this.each((function() {
                            Mt.set(this, t, e)
                        }))
                    }), null, e, arguments.length > 1, null, !0)
                },
                removeData: function(t) {
                    return this.each((function() {
                        Mt.remove(this, t)
                    }))
                }
            }), yt.extend({
                queue: function(t, e, i) {
                    var n;
                    if (t) return e = (e || "fx") + "queue", n = Rt.get(t, e), i && (!n || Array.isArray(i) ? n = Rt.access(t, e, yt.makeArray(i)) : n.push(i)), n || []
                },
                dequeue: function(t, e) {
                    e = e || "fx";
                    var i = yt.queue(t, e),
                        n = i.length,
                        o = i.shift(),
                        s = yt._queueHooks(t, e),
                        r = function() {
                            yt.dequeue(t, e)
                        };
                    "inprogress" === o && (o = i.shift(), n--), o && ("fx" === e && i.unshift("inprogress"), delete s.stop, o.call(t, r, s)), !n && s && s.empty.fire()
                },
                _queueHooks: function(t, e) {
                    var i = e + "queueHooks";
                    return Rt.get(t, i) || Rt.access(t, i, {
                        empty: yt.Callbacks("once memory").add((function() {
                            Rt.remove(t, [e + "queue", i])
                        }))
                    })
                }
            }), yt.fn.extend({
                queue: function(t, e) {
                    var i = 2;
                    return "string" != typeof t && (e = t, t = "fx", i--), arguments.length < i ? yt.queue(this[0], t) : void 0 === e ? this : this.each((function() {
                        var i = yt.queue(this, t, e);
                        yt._queueHooks(this, t), "fx" === t && "inprogress" !== i[0] && yt.dequeue(this, t)
                    }))
                },
                dequeue: function(t) {
                    return this.each((function() {
                        yt.dequeue(this, t)
                    }))
                },
                clearQueue: function(t) {
                    return this.queue(t || "fx", [])
                },
                promise: function(t, e) {
                    var i, n = 1,
                        o = yt.Deferred(),
                        s = this,
                        r = this.length,
                        a = function() {
                            --n || o.resolveWith(s, [s])
                        };
                    for ("string" != typeof t && (e = t, t = void 0), t = t || "fx"; r--;)(i = Rt.get(s[r], t + "queueHooks")) && i.empty && (n++, i.empty.add(a));
                    return a(), o.promise(e)
                }
            });
            var zt = /[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,
                Ut = new RegExp("^(?:([+-])=|)(" + zt + ")([a-z%]*)$", "i"),
                Bt = ["Top", "Right", "Bottom", "Left"],
                _t = function(t, e) {
                    return t = e || t, "none" === t.style.display || "" === t.style.display && yt.contains(t.ownerDocument, t) && "none" === yt.css(t, "display")
                },
                Xt = function(t, e, i, n) {
                    var o, s, r = {};
                    for (s in e) r[s] = t.style[s], t.style[s] = e[s];
                    o = i.apply(t, n || []);
                    for (s in e) t.style[s] = r[s];
                    return o
                },
                Vt = {};
            yt.fn.extend({
                show: function() {
                    return T(this, !0)
                },
                hide: function() {
                    return T(this)
                },
                toggle: function(t) {
                    return "boolean" == typeof t ? t ? this.show() : this.hide() : this.each((function() {
                        _t(this) ? yt(this).show() : yt(this).hide()
                    }))
                }
            });
            var Yt = /^(?:checkbox|radio)$/i,
                Gt = /<([a-z][^\/\0>\x20\t\r\n\f]+)/i,
                Jt = /^$|\/(?:java|ecma)script/i,
                Qt = {
                    option: [1, "<select multiple='multiple'>", "</select>"],
                    thead: [1, "<table>", "</table>"],
                    col: [2, "<table><colgroup>", "</colgroup></table>"],
                    tr: [2, "<table><tbody>", "</tbody></table>"],
                    td: [3, "<table><tbody><tr>", "</tr></tbody></table>"],
                    _default: [0, "", ""]
                };
            Qt.optgroup = Qt.option, Qt.tbody = Qt.tfoot = Qt.colgroup = Qt.caption = Qt.thead, Qt.th = Qt.td;
            var Kt = /<|&#?\w+;/;
            (function() {
                var t = rt.createDocumentFragment(),
                    e = t.appendChild(rt.createElement("div")),
                    i = rt.createElement("input");
                i.setAttribute("type", "radio"), i.setAttribute("checked", "checked"), i.setAttribute("name", "t"), e.appendChild(i), mt.checkClone = e.cloneNode(!0).cloneNode(!0).lastChild.checked, e.innerHTML = "<textarea>x</textarea>", mt.noCloneChecked = !!e.cloneNode(!0).lastChild.defaultValue
            })();
            var Zt = rt.documentElement,
                te = /^key/,
                ee = /^(?:mouse|pointer|contextmenu|drag|drop)|click/,
                ie = /^([^.]*)(?:\.(.+)|)/;
            yt.event = {
                global: {},
                add: function(t, e, i, n, o) {
                    var s, r, a, l, c, d, u, p, f, h, g, v = Rt.get(t);
                    if (v)
                        for (i.handler && (s = i, i = s.handler, o = s.selector), o && yt.find.matchesSelector(Zt, o), i.guid || (i.guid = yt.guid++), (l = v.events) || (l = v.events = {}), (r = v.handle) || (r = v.handle = function(e) {
                                return void 0 !== yt && yt.event.triggered !== e.type ? yt.event.dispatch.apply(t, arguments) : void 0
                            }), e = (e || "").match(It) || [""], c = e.length; c--;) a = ie.exec(e[c]) || [], f = g = a[1], h = (a[2] || "").split(".").sort(), f && (u = yt.event.special[f] || {}, f = (o ? u.delegateType : u.bindType) || f, u = yt.event.special[f] || {}, d = yt.extend({
                            type: f,
                            origType: g,
                            data: n,
                            handler: i,
                            guid: i.guid,
                            selector: o,
                            needsContext: o && yt.expr.match.needsContext.test(o),
                            namespace: h.join(".")
                        }, s), (p = l[f]) || (p = l[f] = [], p.delegateCount = 0, u.setup && !1 !== u.setup.call(t, n, h, r) || t.addEventListener && t.addEventListener(f, r)), u.add && (u.add.call(t, d), d.handler.guid || (d.handler.guid = i.guid)), o ? p.splice(p.delegateCount++, 0, d) : p.push(d), yt.event.global[f] = !0)
                },
                remove: function(t, e, i, n, o) {
                    var s, r, a, l, c, d, u, p, f, h, g, v = Rt.hasData(t) && Rt.get(t);
                    if (v && (l = v.events)) {
                        for (e = (e || "").match(It) || [""], c = e.length; c--;)
                            if (a = ie.exec(e[c]) || [], f = g = a[1], h = (a[2] || "").split(".").sort(), f) {
                                for (u = yt.event.special[f] || {}, f = (n ? u.delegateType : u.bindType) || f, p = l[f] || [], a = a[2] && new RegExp("(^|\\.)" + h.join("\\.(?:.*\\.|)") + "(\\.|$)"), r = s = p.length; s--;) d = p[s], !o && g !== d.origType || i && i.guid !== d.guid || a && !a.test(d.namespace) || n && n !== d.selector && ("**" !== n || !d.selector) || (p.splice(s, 1), d.selector && p.delegateCount--, u.remove && u.remove.call(t, d));
                                r && !p.length && (u.teardown && !1 !== u.teardown.call(t, h, v.handle) || yt.removeEvent(t, f, v.handle), delete l[f])
                            } else
                                for (f in l) yt.event.remove(t, f + e[c], i, n, !0);
                        yt.isEmptyObject(l) && Rt.remove(t, "handle events")
                    }
                },
                dispatch: function(t) {
                    var e, i, n, o, s, r, a = yt.event.fix(t),
                        l = new Array(arguments.length),
                        c = (Rt.get(this, "events") || {})[a.type] || [],
                        d = yt.event.special[a.type] || {};
                    for (l[0] = a, e = 1; e < arguments.length; e++) l[e] = arguments[e];
                    if (a.delegateTarget = this, !d.preDispatch || !1 !== d.preDispatch.call(this, a)) {
                        for (r = yt.event.handlers.call(this, a, c), e = 0;
                            (o = r[e++]) && !a.isPropagationStopped();)
                            for (a.currentTarget = o.elem, i = 0;
                                (s = o.handlers[i++]) && !a.isImmediatePropagationStopped();) a.rnamespace && !a.rnamespace.test(s.namespace) || (a.handleObj = s, a.data = s.data, void 0 !== (n = ((yt.event.special[s.origType] || {}).handle || s.handler).apply(o.elem, l)) && !1 === (a.result = n) && (a.preventDefault(), a.stopPropagation()));
                        return d.postDispatch && d.postDispatch.call(this, a), a.result
                    }
                },
                handlers: function(t, e) {
                    var i, n, o, s, r, a = [],
                        l = e.delegateCount,
                        c = t.target;
                    if (l && c.nodeType && !("click" === t.type && t.button >= 1))
                        for (; c !== this; c = c.parentNode || this)
                            if (1 === c.nodeType && ("click" !== t.type || !0 !== c.disabled)) {
                                for (s = [], r = {}, i = 0; i < l; i++) n = e[i], o = n.selector + " ", void 0 === r[o] && (r[o] = n.needsContext ? yt(o, this).index(c) > -1 : yt.find(o, this, null, [c]).length), r[o] && s.push(n);
                                s.length && a.push({
                                    elem: c,
                                    handlers: s
                                })
                            } return c = this, l < e.length && a.push({
                        elem: c,
                        handlers: e.slice(l)
                    }), a
                },
                addProp: function(t, e) {
                    Object.defineProperty(yt.Event.prototype, t, {
                        enumerable: !0,
                        configurable: !0,
                        get: yt.isFunction(e) ? function() {
                            if (this.originalEvent) return e(this.originalEvent)
                        } : function() {
                            if (this.originalEvent) return this.originalEvent[t]
                        },
                        set: function(e) {
                            Object.defineProperty(this, t, {
                                enumerable: !0,
                                configurable: !0,
                                writable: !0,
                                value: e
                            })
                        }
                    })
                },
                fix: function(t) {
                    return t[yt.expando] ? t : new yt.Event(t)
                },
                special: {
                    load: {
                        noBubble: !0
                    },
                    focus: {
                        trigger: function() {
                            if (this !== E() && this.focus) return this.focus(), !1
                        },
                        delegateType: "focusin"
                    },
                    blur: {
                        trigger: function() {
                            if (this === E() && this.blur) return this.blur(), !1
                        },
                        delegateType: "focusout"
                    },
                    click: {
                        trigger: function() {
                            if ("checkbox" === this.type && this.click && l(this, "input")) return this.click(), !1
                        },
                        _default: function(t) {
                            return l(t.target, "a")
                        }
                    },
                    beforeunload: {
                        postDispatch: function(t) {
                            void 0 !== t.result && t.originalEvent && (t.originalEvent.returnValue = t.result)
                        }
                    }
                }
            }, yt.removeEvent = function(t, e, i) {
                t.removeEventListener && t.removeEventListener(e, i)
            }, yt.Event = function(t, e) {
                if (!(this instanceof yt.Event)) return new yt.Event(t, e);
                t && t.type ? (this.originalEvent = t, this.type = t.type, this.isDefaultPrevented = t.defaultPrevented || void 0 === t.defaultPrevented && !1 === t.returnValue ? S : $, this.target = t.target && 3 === t.target.nodeType ? t.target.parentNode : t.target, this.currentTarget = t.currentTarget, this.relatedTarget = t.relatedTarget) : this.type = t, e && yt.extend(this, e), this.timeStamp = t && t.timeStamp || yt.now(), this[yt.expando] = !0
            }, yt.Event.prototype = {
                constructor: yt.Event,
                isDefaultPrevented: $,
                isPropagationStopped: $,
                isImmediatePropagationStopped: $,
                isSimulated: !1,
                preventDefault: function() {
                    var t = this.originalEvent;
                    this.isDefaultPrevented = S, t && !this.isSimulated && t.preventDefault()
                },
                stopPropagation: function() {
                    var t = this.originalEvent;
                    this.isPropagationStopped = S, t && !this.isSimulated && t.stopPropagation()
                },
                stopImmediatePropagation: function() {
                    var t = this.originalEvent;
                    this.isImmediatePropagationStopped = S, t && !this.isSimulated && t.stopImmediatePropagation(), this.stopPropagation()
                }
            }, yt.each({
                altKey: !0,
                bubbles: !0,
                cancelable: !0,
                changedTouches: !0,
                ctrlKey: !0,
                detail: !0,
                eventPhase: !0,
                metaKey: !0,
                pageX: !0,
                pageY: !0,
                shiftKey: !0,
                view: !0,
                char: !0,
                charCode: !0,
                key: !0,
                keyCode: !0,
                button: !0,
                buttons: !0,
                clientX: !0,
                clientY: !0,
                offsetX: !0,
                offsetY: !0,
                pointerId: !0,
                pointerType: !0,
                screenX: !0,
                screenY: !0,
                targetTouches: !0,
                toElement: !0,
                touches: !0,
                which: function(t) {
                    var e = t.button;
                    return null == t.which && te.test(t.type) ? null != t.charCode ? t.charCode : t.keyCode : !t.which && void 0 !== e && ee.test(t.type) ? 1 & e ? 1 : 2 & e ? 3 : 4 & e ? 2 : 0 : t.which
                }
            }, yt.event.addProp), yt.each({
                mouseenter: "mouseover",
                mouseleave: "mouseout",
                pointerenter: "pointerover",
                pointerleave: "pointerout"
            }, (function(t, e) {
                yt.event.special[t] = {
                    delegateType: e,
                    bindType: e,
                    handle: function(t) {
                        var i, n = this,
                            o = t.relatedTarget,
                            s = t.handleObj;
                        return o && (o === n || yt.contains(n, o)) || (t.type = s.origType, i = s.handler.apply(this, arguments), t.type = e), i
                    }
                }
            })), yt.fn.extend({
                on: function(t, e, i, n) {
                    return A(this, t, e, i, n)
                },
                one: function(t, e, i, n) {
                    return A(this, t, e, i, n, 1)
                },
                off: function(t, e, i) {
                    var n, o;
                    if (t && t.preventDefault && t.handleObj) return n = t.handleObj, yt(t.delegateTarget).off(n.namespace ? n.origType + "." + n.namespace : n.origType, n.selector, n.handler), this;
                    if ("object" == typeof t) {
                        for (o in t) this.off(o, e, t[o]);
                        return this
                    }
                    return !1 !== e && "function" != typeof e || (i = e, e = void 0), !1 === i && (i = $), this.each((function() {
                        yt.event.remove(this, t, i, e)
                    }))
                }
            });
            var ne = /<(?!area|br|col|embed|hr|img|input|link|meta|param)(([a-z][^\/\0>\x20\t\r\n\f]*)[^>]*)\/>/gi,
                oe = /<script|<style|<link/i,
                se = /checked\s*(?:[^=]|=\s*.checked.)/i,
                re = /^true\/(.*)/,
                ae = /^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g;
            yt.extend({
                htmlPrefilter: function(t) {
                    return t.replace(ne, "<$1></$2>")
                },
                clone: function(t, e, i) {
                    var n, o, s, r, a = t.cloneNode(!0),
                        l = yt.contains(t.ownerDocument, t);
                    if (!(mt.noCloneChecked || 1 !== t.nodeType && 11 !== t.nodeType || yt.isXMLDoc(t)))
                        for (r = x(a), s = x(t), n = 0, o = s.length; n < o; n++) I(s[n], r[n]);
                    if (e)
                        if (i)
                            for (s = s || x(t), r = r || x(a), n = 0, o = s.length; n < o; n++) j(s[n], r[n]);
                        else j(t, a);
                    return r = x(a, "script"), r.length > 0 && k(r, !l && x(t, "script")), a
                },
                cleanData: function(t) {
                    for (var e, i, n, o = yt.event.special, s = 0; void 0 !== (i = t[s]); s++)
                        if (qt(i)) {
                            if (e = i[Rt.expando]) {
                                if (e.events)
                                    for (n in e.events) o[n] ? yt.event.remove(i, n) : yt.removeEvent(i, n, e.handle);
                                i[Rt.expando] = void 0
                            }
                            i[Mt.expando] && (i[Mt.expando] = void 0)
                        }
                }
            }), yt.fn.extend({
                detach: function(t) {
                    return P(this, t, !0)
                },
                remove: function(t) {
                    return P(this, t)
                },
                text: function(t) {
                    return Ht(this, (function(t) {
                        return void 0 === t ? yt.text(this) : this.empty().each((function() {
                            1 !== this.nodeType && 11 !== this.nodeType && 9 !== this.nodeType || (this.textContent = t)
                        }))
                    }), null, t, arguments.length)
                },
                append: function() {
                    return L(this, arguments, (function(t) {
                        if (1 === this.nodeType || 11 === this.nodeType || 9 === this.nodeType) {
                            D(this, t).appendChild(t)
                        }
                    }))
                },
                prepend: function() {
                    return L(this, arguments, (function(t) {
                        if (1 === this.nodeType || 11 === this.nodeType || 9 === this.nodeType) {
                            var e = D(this, t);
                            e.insertBefore(t, e.firstChild)
                        }
                    }))
                },
                before: function() {
                    return L(this, arguments, (function(t) {
                        this.parentNode && this.parentNode.insertBefore(t, this)
                    }))
                },
                after: function() {
                    return L(this, arguments, (function(t) {
                        this.parentNode && this.parentNode.insertBefore(t, this.nextSibling)
                    }))
                },
                empty: function() {
                    for (var t, e = 0; null != (t = this[e]); e++) 1 === t.nodeType && (yt.cleanData(x(t, !1)), t.textContent = "");
                    return this
                },
                clone: function(t, e) {
                    return t = null != t && t, e = null == e ? t : e, this.map((function() {
                        return yt.clone(this, t, e)
                    }))
                },
                html: function(t) {
                    return Ht(this, (function(t) {
                        var e = this[0] || {},
                            i = 0,
                            n = this.length;
                        if (void 0 === t && 1 === e.nodeType) return e.innerHTML;
                        if ("string" == typeof t && !oe.test(t) && !Qt[(Gt.exec(t) || ["", ""])[1].toLowerCase()]) {
                            t = yt.htmlPrefilter(t);
                            try {
                                for (; i < n; i++) e = this[i] || {}, 1 === e.nodeType && (yt.cleanData(x(e, !1)), e.innerHTML = t);
                                e = 0
                            } catch (t) {}
                        }
                        e && this.empty().append(t)
                    }), null, t, arguments.length)
                },
                replaceWith: function() {
                    var t = [];
                    return L(this, arguments, (function(e) {
                        var i = this.parentNode;
                        yt.inArray(this, t) < 0 && (yt.cleanData(x(this)), i && i.replaceChild(e, this))
                    }), t)
                }
            }), yt.each({
                appendTo: "append",
                prependTo: "prepend",
                insertBefore: "before",
                insertAfter: "after",
                replaceAll: "replaceWith"
            }, (function(t, e) {
                yt.fn[t] = function(t) {
                    for (var i, n = [], o = yt(t), s = o.length - 1, r = 0; r <= s; r++) i = r === s ? this : this.clone(!0), yt(o[r])[e](i), dt.apply(n, i.get());
                    return this.pushStack(n)
                }
            }));
            var le = /^margin/,
                ce = new RegExp("^(" + zt + ")(?!px)[a-z%]+$", "i"),
                de = function(t) {
                    var e = t.ownerDocument.defaultView;
                    return e && e.opener || (e = i), e.getComputedStyle(t)
                };
            (function() {
                function t() {
                    if (a) {
                        a.style.cssText = "box-sizing:border-box;position:relative;display:block;margin:auto;border:1px;padding:1px;top:1%;width:50%", a.innerHTML = "", Zt.appendChild(r);
                        var t = i.getComputedStyle(a);
                        e = "1%" !== t.top, s = "2px" === t.marginLeft, n = "4px" === t.width, a.style.marginRight = "50%", o = "4px" === t.marginRight, Zt.removeChild(r), a = null
                    }
                }
                var e, n, o, s, r = rt.createElement("div"),
                    a = rt.createElement("div");
                a.style && (a.style.backgroundClip = "content-box", a.cloneNode(!0).style.backgroundClip = "", mt.clearCloneStyle = "content-box" === a.style.backgroundClip, r.style.cssText = "border:0;width:8px;height:0;top:0;left:-9999px;padding:0;margin-top:1px;position:absolute", r.appendChild(a), yt.extend(mt, {
                    pixelPosition: function() {
                        return t(), e
                    },
                    boxSizingReliable: function() {
                        return t(), n
                    },
                    pixelMarginRight: function() {
                        return t(), o
                    },
                    reliableMarginLeft: function() {
                        return t(), s
                    }
                }))
            })();
            var ue = /^(none|table(?!-c[ea]).+)/,
                pe = /^--/,
                fe = {
                    position: "absolute",
                    visibility: "hidden",
                    display: "block"
                },
                he = {
                    letterSpacing: "0",
                    fontWeight: "400"
                },
                ge = ["Webkit", "Moz", "ms"],
                ve = rt.createElement("div").style;
            yt.extend({
                cssHooks: {
                    opacity: {
                        get: function(t, e) {
                            if (e) {
                                var i = H(t, "opacity");
                                return "" === i ? "1" : i
                            }
                        }
                    }
                },
                cssNumber: {
                    animationIterationCount: !0,
                    columnCount: !0,
                    fillOpacity: !0,
                    flexGrow: !0,
                    flexShrink: !0,
                    fontWeight: !0,
                    lineHeight: !0,
                    opacity: !0,
                    order: !0,
                    orphans: !0,
                    widows: !0,
                    zIndex: !0,
                    zoom: !0
                },
                cssProps: {
                    float: "cssFloat"
                },
                style: function(t, e, i, n) {
                    if (t && 3 !== t.nodeType && 8 !== t.nodeType && t.style) {
                        var o, s, r, a = yt.camelCase(e),
                            l = pe.test(e),
                            c = t.style;
                        if (l || (e = M(a)), r = yt.cssHooks[e] || yt.cssHooks[a], void 0 === i) return r && "get" in r && void 0 !== (o = r.get(t, !1, n)) ? o : c[e];
                        s = typeof i, "string" === s && (o = Ut.exec(i)) && o[1] && (i = b(t, e, o), s = "number"), null != i && i === i && ("number" === s && (i += o && o[3] || (yt.cssNumber[a] ? "" : "px")), mt.clearCloneStyle || "" !== i || 0 !== e.indexOf("background") || (c[e] = "inherit"), r && "set" in r && void 0 === (i = r.set(t, i, n)) || (l ? c.setProperty(e, i) : c[e] = i))
                    }
                },
                css: function(t, e, i, n) {
                    var o, s, r, a = yt.camelCase(e);
                    return pe.test(e) || (e = M(a)), r = yt.cssHooks[e] || yt.cssHooks[a], r && "get" in r && (o = r.get(t, !0, i)), void 0 === o && (o = H(t, e, n)), "normal" === o && e in he && (o = he[e]), "" === i || i ? (s = parseFloat(o), !0 === i || isFinite(s) ? s || 0 : o) : o
                }
            }), yt.each(["height", "width"], (function(t, e) {
                yt.cssHooks[e] = {
                    get: function(t, i, n) {
                        if (i) return !ue.test(yt.css(t, "display")) || t.getClientRects().length && t.getBoundingClientRect().width ? z(t, e, n) : Xt(t, fe, (function() {
                            return z(t, e, n)
                        }))
                    },
                    set: function(t, i, n) {
                        var o, s = n && de(t),
                            r = n && W(t, e, n, "border-box" === yt.css(t, "boxSizing", !1, s), s);
                        return r && (o = Ut.exec(i)) && "px" !== (o[3] || "px") && (t.style[e] = i, i = yt.css(t, e)), F(t, i, r)
                    }
                }
            })), yt.cssHooks.marginLeft = q(mt.reliableMarginLeft, (function(t, e) {
                if (e) return (parseFloat(H(t, "marginLeft")) || t.getBoundingClientRect().left - Xt(t, {
                    marginLeft: 0
                }, (function() {
                    return t.getBoundingClientRect().left
                }))) + "px"
            })), yt.each({
                margin: "",
                padding: "",
                border: "Width"
            }, (function(t, e) {
                yt.cssHooks[t + e] = {
                    expand: function(i) {
                        for (var n = 0, o = {}, s = "string" == typeof i ? i.split(" ") : [i]; n < 4; n++) o[t + Bt[n] + e] = s[n] || s[n - 2] || s[0];
                        return o
                    }
                }, le.test(t) || (yt.cssHooks[t + e].set = F)
            })), yt.fn.extend({
                css: function(t, e) {
                    return Ht(this, (function(t, e, i) {
                        var n, o, s = {},
                            r = 0;
                        if (Array.isArray(e)) {
                            for (n = de(t), o = e.length; r < o; r++) s[e[r]] = yt.css(t, e[r], !1, n);
                            return s
                        }
                        return void 0 !== i ? yt.style(t, e, i) : yt.css(t, e)
                    }), t, e, arguments.length > 1)
                }
            }), yt.Tween = U, U.prototype = {
                constructor: U,
                init: function(t, e, i, n, o, s) {
                    this.elem = t, this.prop = i, this.easing = o || yt.easing._default, this.options = e, this.start = this.now = this.cur(), this.end = n, this.unit = s || (yt.cssNumber[i] ? "" : "px")
                },
                cur: function() {
                    var t = U.propHooks[this.prop];
                    return t && t.get ? t.get(this) : U.propHooks._default.get(this)
                },
                run: function(t) {
                    var e, i = U.propHooks[this.prop];
                    return this.options.duration ? this.pos = e = yt.easing[this.easing](t, this.options.duration * t, 0, 1, this.options.duration) : this.pos = e = t, this.now = (this.end - this.start) * e + this.start, this.options.step && this.options.step.call(this.elem, this.now, this), i && i.set ? i.set(this) : U.propHooks._default.set(this), this
                }
            }, U.prototype.init.prototype = U.prototype, U.propHooks = {
                _default: {
                    get: function(t) {
                        var e;
                        return 1 !== t.elem.nodeType || null != t.elem[t.prop] && null == t.elem.style[t.prop] ? t.elem[t.prop] : (e = yt.css(t.elem, t.prop, ""), e && "auto" !== e ? e : 0)
                    },
                    set: function(t) {
                        yt.fx.step[t.prop] ? yt.fx.step[t.prop](t) : 1 !== t.elem.nodeType || null == t.elem.style[yt.cssProps[t.prop]] && !yt.cssHooks[t.prop] ? t.elem[t.prop] = t.now : yt.style(t.elem, t.prop, t.now + t.unit)
                    }
                }
            }, U.propHooks.scrollTop = U.propHooks.scrollLeft = {
                set: function(t) {
                    t.elem.nodeType && t.elem.parentNode && (t.elem[t.prop] = t.now)
                }
            }, yt.easing = {
                linear: function(t) {
                    return t
                },
                swing: function(t) {
                    return .5 - Math.cos(t * Math.PI) / 2
                },
                _default: "swing"
            }, yt.fx = U.prototype.init, yt.fx.step = {};
            var me, ye, be = /^(?:toggle|show|hide)$/,
                we = /queueHooks$/;
            yt.Animation = yt.extend(J, {
                tweeners: {
                    "*": [function(t, e) {
                        var i = this.createTween(t, e);
                        return b(i.elem, t, Ut.exec(e), i), i
                    }]
                },
                tweener: function(t, e) {
                    yt.isFunction(t) ? (e = t, t = ["*"]) : t = t.match(It);
                    for (var i, n = 0, o = t.length; n < o; n++) i = t[n], J.tweeners[i] = J.tweeners[i] || [], J.tweeners[i].unshift(e)
                },
                prefilters: [Y],
                prefilter: function(t, e) {
                    e ? J.prefilters.unshift(t) : J.prefilters.push(t)
                }
            }), yt.speed = function(t, e, i) {
                var n = t && "object" == typeof t ? yt.extend({}, t) : {
                    complete: i || !i && e || yt.isFunction(t) && t,
                    duration: t,
                    easing: i && e || e && !yt.isFunction(e) && e
                };
                return yt.fx.off ? n.duration = 0 : "number" != typeof n.duration && (n.duration in yt.fx.speeds ? n.duration = yt.fx.speeds[n.duration] : n.duration = yt.fx.speeds._default), null != n.queue && !0 !== n.queue || (n.queue = "fx"), n.old = n.complete, n.complete = function() {
                    yt.isFunction(n.old) && n.old.call(this), n.queue && yt.dequeue(this, n.queue)
                }, n
            }, yt.fn.extend({
                fadeTo: function(t, e, i, n) {
                    return this.filter(_t).css("opacity", 0).show().end().animate({
                        opacity: e
                    }, t, i, n)
                },
                animate: function(t, e, i, n) {
                    var o = yt.isEmptyObject(t),
                        s = yt.speed(e, i, n),
                        r = function() {
                            var e = J(this, yt.extend({}, t), s);
                            (o || Rt.get(this, "finish")) && e.stop(!0)
                        };
                    return r.finish = r, o || !1 === s.queue ? this.each(r) : this.queue(s.queue, r)
                },
                stop: function(t, e, i) {
                    var n = function(t) {
                        var e = t.stop;
                        delete t.stop, e(i)
                    };
                    return "string" != typeof t && (i = e, e = t, t = void 0), e && !1 !== t && this.queue(t || "fx", []), this.each((function() {
                        var e = !0,
                            o = null != t && t + "queueHooks",
                            s = yt.timers,
                            r = Rt.get(this);
                        if (o) r[o] && r[o].stop && n(r[o]);
                        else
                            for (o in r) r[o] && r[o].stop && we.test(o) && n(r[o]);
                        for (o = s.length; o--;) s[o].elem !== this || null != t && s[o].queue !== t || (s[o].anim.stop(i), e = !1, s.splice(o, 1));
                        !e && i || yt.dequeue(this, t)
                    }))
                },
                finish: function(t) {
                    return !1 !== t && (t = t || "fx"), this.each((function() {
                        var e, i = Rt.get(this),
                            n = i[t + "queue"],
                            o = i[t + "queueHooks"],
                            s = yt.timers,
                            r = n ? n.length : 0;
                        for (i.finish = !0, yt.queue(this, t, []), o && o.stop && o.stop.call(this, !0), e = s.length; e--;) s[e].elem === this && s[e].queue === t && (s[e].anim.stop(!0), s.splice(e, 1));
                        for (e = 0; e < r; e++) n[e] && n[e].finish && n[e].finish.call(this);
                        delete i.finish
                    }))
                }
            }), yt.each(["toggle", "show", "hide"], (function(t, e) {
                var i = yt.fn[e];
                yt.fn[e] = function(t, n, o) {
                    return null == t || "boolean" == typeof t ? i.apply(this, arguments) : this.animate(X(e, !0), t, n, o)
                }
            })), yt.each({
                slideDown: X("show"),
                slideUp: X("hide"),
                slideToggle: X("toggle"),
                fadeIn: {
                    opacity: "show"
                },
                fadeOut: {
                    opacity: "hide"
                },
                fadeToggle: {
                    opacity: "toggle"
                }
            }, (function(t, e) {
                yt.fn[t] = function(t, i, n) {
                    return this.animate(e, t, i, n)
                }
            })), yt.timers = [], yt.fx.tick = function() {
                var t, e = 0,
                    i = yt.timers;
                for (me = yt.now(); e < i.length; e++)(t = i[e])() || i[e] !== t || i.splice(e--, 1);
                i.length || yt.fx.stop(), me = void 0
            }, yt.fx.timer = function(t) {
                yt.timers.push(t), yt.fx.start()
            }, yt.fx.interval = 13, yt.fx.start = function() {
                ye || (ye = !0, B())
            }, yt.fx.stop = function() {
                ye = null
            }, yt.fx.speeds = {
                slow: 600,
                fast: 200,
                _default: 400
            }, yt.fn.delay = function(t, e) {
                return t = yt.fx ? yt.fx.speeds[t] || t : t, e = e || "fx", this.queue(e, (function(e, n) {
                    var o = i.setTimeout(e, t);
                    n.stop = function() {
                        i.clearTimeout(o)
                    }
                }))
            }, (function() {
                var t = rt.createElement("input"),
                    e = rt.createElement("select"),
                    i = e.appendChild(rt.createElement("option"));
                t.type = "checkbox", mt.checkOn = "" !== t.value, mt.optSelected = i.selected, t = rt.createElement("input"), t.value = "t", t.type = "radio", mt.radioValue = "t" === t.value
            })();
            var Te, xe = yt.expr.attrHandle;
            yt.fn.extend({
                attr: function(t, e) {
                    return Ht(this, yt.attr, t, e, arguments.length > 1)
                },
                removeAttr: function(t) {
                    return this.each((function() {
                        yt.removeAttr(this, t)
                    }))
                }
            }), yt.extend({
                attr: function(t, e, i) {
                    var n, o, s = t.nodeType;
                    if (3 !== s && 8 !== s && 2 !== s) return void 0 === t.getAttribute ? yt.prop(t, e, i) : (1 === s && yt.isXMLDoc(t) || (o = yt.attrHooks[e.toLowerCase()] || (yt.expr.match.bool.test(e) ? Te : void 0)), void 0 !== i ? null === i ? void yt.removeAttr(t, e) : o && "set" in o && void 0 !== (n = o.set(t, i, e)) ? n : (t.setAttribute(e, i + ""), i) : o && "get" in o && null !== (n = o.get(t, e)) ? n : (n = yt.find.attr(t, e), null == n ? void 0 : n))
                },
                attrHooks: {
                    type: {
                        set: function(t, e) {
                            if (!mt.radioValue && "radio" === e && l(t, "input")) {
                                var i = t.value;
                                return t.setAttribute("type", e), i && (t.value = i), e
                            }
                        }
                    }
                },
                removeAttr: function(t, e) {
                    var i, n = 0,
                        o = e && e.match(It);
                    if (o && 1 === t.nodeType)
                        for (; i = o[n++];) t.removeAttribute(i)
                }
            }), Te = {
                set: function(t, e, i) {
                    return !1 === e ? yt.removeAttr(t, i) : t.setAttribute(i, i), i
                }
            }, yt.each(yt.expr.match.bool.source.match(/\w+/g), (function(t, e) {
                var i = xe[e] || yt.find.attr;
                xe[e] = function(t, e, n) {
                    var o, s, r = e.toLowerCase();
                    return n || (s = xe[r], xe[r] = o, o = null != i(t, e, n) ? r : null, xe[r] = s), o
                }
            }));
            var ke = /^(?:input|select|textarea|button)$/i,
                Ce = /^(?:a|area)$/i;
            yt.fn.extend({
                prop: function(t, e) {
                    return Ht(this, yt.prop, t, e, arguments.length > 1)
                },
                removeProp: function(t) {
                    return this.each((function() {
                        delete this[yt.propFix[t] || t]
                    }))
                }
            }), yt.extend({
                prop: function(t, e, i) {
                    var n, o, s = t.nodeType;
                    if (3 !== s && 8 !== s && 2 !== s) return 1 === s && yt.isXMLDoc(t) || (e = yt.propFix[e] || e, o = yt.propHooks[e]), void 0 !== i ? o && "set" in o && void 0 !== (n = o.set(t, i, e)) ? n : t[e] = i : o && "get" in o && null !== (n = o.get(t, e)) ? n : t[e]
                },
                propHooks: {
                    tabIndex: {
                        get: function(t) {
                            var e = yt.find.attr(t, "tabindex");
                            return e ? parseInt(e, 10) : ke.test(t.nodeName) || Ce.test(t.nodeName) && t.href ? 0 : -1
                        }
                    }
                },
                propFix: {
                    for: "htmlFor",
                    class: "className"
                }
            }), mt.optSelected || (yt.propHooks.selected = {
                get: function(t) {
                    var e = t.parentNode;
                    return e && e.parentNode && e.parentNode.selectedIndex, null
                },
                set: function(t) {
                    var e = t.parentNode;
                    e && (e.selectedIndex, e.parentNode && e.parentNode.selectedIndex)
                }
            }), yt.each(["tabIndex", "readOnly", "maxLength", "cellSpacing", "cellPadding", "rowSpan", "colSpan", "useMap", "frameBorder", "contentEditable"], (function() {
                yt.propFix[this.toLowerCase()] = this
            })), yt.fn.extend({
                addClass: function(t) {
                    var e, i, n, o, s, r, a, l = 0;
                    if (yt.isFunction(t)) return this.each((function(e) {
                        yt(this).addClass(t.call(this, e, K(this)))
                    }));
                    if ("string" == typeof t && t)
                        for (e = t.match(It) || []; i = this[l++];)
                            if (o = K(i), n = 1 === i.nodeType && " " + Q(o) + " ") {
                                for (r = 0; s = e[r++];) n.indexOf(" " + s + " ") < 0 && (n += s + " ");
                                a = Q(n), o !== a && i.setAttribute("class", a)
                            } return this
                },
                removeClass: function(t) {
                    var e, i, n, o, s, r, a, l = 0;
                    if (yt.isFunction(t)) return this.each((function(e) {
                        yt(this).removeClass(t.call(this, e, K(this)))
                    }));
                    if (!arguments.length) return this.attr("class", "");
                    if ("string" == typeof t && t)
                        for (e = t.match(It) || []; i = this[l++];)
                            if (o = K(i), n = 1 === i.nodeType && " " + Q(o) + " ") {
                                for (r = 0; s = e[r++];)
                                    for (; n.indexOf(" " + s + " ") > -1;) n = n.replace(" " + s + " ", " ");
                                a = Q(n), o !== a && i.setAttribute("class", a)
                            } return this
                },
                toggleClass: function(t, e) {
                    var i = typeof t;
                    return "boolean" == typeof e && "string" === i ? e ? this.addClass(t) : this.removeClass(t) : yt.isFunction(t) ? this.each((function(i) {
                        yt(this).toggleClass(t.call(this, i, K(this), e), e)
                    })) : this.each((function() {
                        var e, n, o, s;
                        if ("string" === i)
                            for (n = 0, o = yt(this), s = t.match(It) || []; e = s[n++];) o.hasClass(e) ? o.removeClass(e) : o.addClass(e);
                        else void 0 !== t && "boolean" !== i || (e = K(this), e && Rt.set(this, "__className__", e), this.setAttribute && this.setAttribute("class", e || !1 === t ? "" : Rt.get(this, "__className__") || ""))
                    }))
                },
                hasClass: function(t) {
                    var e, i, n = 0;
                    for (e = " " + t + " "; i = this[n++];)
                        if (1 === i.nodeType && (" " + Q(K(i)) + " ").indexOf(e) > -1) return !0;
                    return !1
                }
            });
            var Se = /\r/g;
            yt.fn.extend({
                val: function(t) {
                    var e, i, n, o = this[0]; {
                        if (arguments.length) return n = yt.isFunction(t), this.each((function(i) {
                            var o;
                            1 === this.nodeType && (o = n ? t.call(this, i, yt(this).val()) : t, null == o ? o = "" : "number" == typeof o ? o += "" : Array.isArray(o) && (o = yt.map(o, (function(t) {
                                return null == t ? "" : t + ""
                            }))), (e = yt.valHooks[this.type] || yt.valHooks[this.nodeName.toLowerCase()]) && "set" in e && void 0 !== e.set(this, o, "value") || (this.value = o))
                        }));
                        if (o) return (e = yt.valHooks[o.type] || yt.valHooks[o.nodeName.toLowerCase()]) && "get" in e && void 0 !== (i = e.get(o, "value")) ? i : (i = o.value, "string" == typeof i ? i.replace(Se, "") : null == i ? "" : i)
                    }
                }
            }), yt.extend({
                valHooks: {
                    option: {
                        get: function(t) {
                            var e = yt.find.attr(t, "value");
                            return null != e ? e : Q(yt.text(t))
                        }
                    },
                    select: {
                        get: function(t) {
                            var e, i, n, o = t.options,
                                s = t.selectedIndex,
                                r = "select-one" === t.type,
                                a = r ? null : [],
                                c = r ? s + 1 : o.length;
                            for (n = s < 0 ? c : r ? s : 0; n < c; n++)
                                if (i = o[n], (i.selected || n === s) && !i.disabled && (!i.parentNode.disabled || !l(i.parentNode, "optgroup"))) {
                                    if (e = yt(i).val(), r) return e;
                                    a.push(e)
                                } return a
                        },
                        set: function(t, e) {
                            for (var i, n, o = t.options, s = yt.makeArray(e), r = o.length; r--;) n = o[r], (n.selected = yt.inArray(yt.valHooks.option.get(n), s) > -1) && (i = !0);
                            return i || (t.selectedIndex = -1), s
                        }
                    }
                }
            }), yt.each(["radio", "checkbox"], (function() {
                yt.valHooks[this] = {
                    set: function(t, e) {
                        if (Array.isArray(e)) return t.checked = yt.inArray(yt(t).val(), e) > -1
                    }
                }, mt.checkOn || (yt.valHooks[this].get = function(t) {
                    return null === t.getAttribute("value") ? "on" : t.value
                })
            }));
            var $e = /^(?:focusinfocus|focusoutblur)$/;
            yt.extend(yt.event, {
                trigger: function(t, e, n, o) {
                    var s, r, a, l, c, d, u, p = [n || rt],
                        f = ht.call(t, "type") ? t.type : t,
                        h = ht.call(t, "namespace") ? t.namespace.split(".") : [];
                    if (r = a = n = n || rt, 3 !== n.nodeType && 8 !== n.nodeType && !$e.test(f + yt.event.triggered) && (f.indexOf(".") > -1 && (h = f.split("."), f = h.shift(), h.sort()), c = f.indexOf(":") < 0 && "on" + f, t = t[yt.expando] ? t : new yt.Event(f, "object" == typeof t && t), t.isTrigger = o ? 2 : 3, t.namespace = h.join("."), t.rnamespace = t.namespace ? new RegExp("(^|\\.)" + h.join("\\.(?:.*\\.|)") + "(\\.|$)") : null, t.result = void 0, t.target || (t.target = n), e = null == e ? [t] : yt.makeArray(e, [t]), u = yt.event.special[f] || {}, o || !u.trigger || !1 !== u.trigger.apply(n, e))) {
                        if (!o && !u.noBubble && !yt.isWindow(n)) {
                            for (l = u.delegateType || f, $e.test(l + f) || (r = r.parentNode); r; r = r.parentNode) p.push(r), a = r;
                            a === (n.ownerDocument || rt) && p.push(a.defaultView || a.parentWindow || i)
                        }
                        for (s = 0;
                            (r = p[s++]) && !t.isPropagationStopped();) t.type = s > 1 ? l : u.bindType || f, d = (Rt.get(r, "events") || {})[t.type] && Rt.get(r, "handle"), d && d.apply(r, e), (d = c && r[c]) && d.apply && qt(r) && (t.result = d.apply(r, e), !1 === t.result && t.preventDefault());
                        return t.type = f, o || t.isDefaultPrevented() || u._default && !1 !== u._default.apply(p.pop(), e) || !qt(n) || c && yt.isFunction(n[f]) && !yt.isWindow(n) && (a = n[c], a && (n[c] = null), yt.event.triggered = f, n[f](), yt.event.triggered = void 0, a && (n[c] = a)), t.result
                    }
                },
                simulate: function(t, e, i) {
                    var n = yt.extend(new yt.Event, i, {
                        type: t,
                        isSimulated: !0
                    });
                    yt.event.trigger(n, null, e)
                }
            }), yt.fn.extend({
                trigger: function(t, e) {
                    return this.each((function() {
                        yt.event.trigger(t, e, this)
                    }))
                },
                triggerHandler: function(t, e) {
                    var i = this[0];
                    if (i) return yt.event.trigger(t, e, i, !0)
                }
            }), yt.each("blur focus focusin focusout resize scroll click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup contextmenu".split(" "), (function(t, e) {
                yt.fn[e] = function(t, i) {
                    return arguments.length > 0 ? this.on(e, null, t, i) : this.trigger(e)
                }
            })), yt.fn.extend({
                hover: function(t, e) {
                    return this.mouseenter(t).mouseleave(e || t)
                }
            }), mt.focusin = "onfocusin" in i, mt.focusin || yt.each({
                focus: "focusin",
                blur: "focusout"
            }, (function(t, e) {
                var i = function(t) {
                    yt.event.simulate(e, t.target, yt.event.fix(t))
                };
                yt.event.special[e] = {
                    setup: function() {
                        var n = this.ownerDocument || this,
                            o = Rt.access(n, e);
                        o || n.addEventListener(t, i, !0), Rt.access(n, e, (o || 0) + 1)
                    },
                    teardown: function() {
                        var n = this.ownerDocument || this,
                            o = Rt.access(n, e) - 1;
                        o ? Rt.access(n, e, o) : (n.removeEventListener(t, i, !0), Rt.remove(n, e))
                    }
                }
            }));
            var Ee = i.location,
                Ae = yt.now(),
                De = /\?/;
            yt.parseXML = function(t) {
                var e;
                if (!t || "string" != typeof t) return null;
                try {
                    e = (new i.DOMParser).parseFromString(t, "text/xml")
                } catch (t) {
                    e = void 0
                }
                return e && !e.getElementsByTagName("parsererror").length || yt.error("Invalid XML: " + t), e
            };
            var Ne = /\[\]$/,
                Oe = /\r?\n/g,
                je = /^(?:submit|button|image|reset|file)$/i,
                Ie = /^(?:input|select|textarea|keygen)/i;
            yt.param = function(t, e) {
                var i, n = [],
                    o = function(t, e) {
                        var i = yt.isFunction(e) ? e() : e;
                        n[n.length] = encodeURIComponent(t) + "=" + encodeURIComponent(null == i ? "" : i)
                    };
                if (Array.isArray(t) || t.jquery && !yt.isPlainObject(t)) yt.each(t, (function() {
                    o(this.name, this.value)
                }));
                else
                    for (i in t) Z(i, t[i], e, o);
                return n.join("&")
            }, yt.fn.extend({
                serialize: function() {
                    return yt.param(this.serializeArray())
                },
                serializeArray: function() {
                    return this.map((function() {
                        var t = yt.prop(this, "elements");
                        return t ? yt.makeArray(t) : this
                    })).filter((function() {
                        var t = this.type;
                        return this.name && !yt(this).is(":disabled") && Ie.test(this.nodeName) && !je.test(t) && (this.checked || !Yt.test(t))
                    })).map((function(t, e) {
                        var i = yt(this).val();
                        return null == i ? null : Array.isArray(i) ? yt.map(i, (function(t) {
                            return {
                                name: e.name,
                                value: t.replace(Oe, "\r\n")
                            }
                        })) : {
                            name: e.name,
                            value: i.replace(Oe, "\r\n")
                        }
                    })).get()
                }
            });
            var Le = /%20/g,
                Pe = /#.*$/,
                He = /([?&])_=[^&]*/,
                qe = /^(.*?):[ \t]*([^\r\n]*)$/gm,
                Re = /^(?:about|app|app-storage|.+-extension|file|res|widget):$/,
                Me = /^(?:GET|HEAD)$/,
                Fe = /^\/\//,
                We = {},
                ze = {},
                Ue = "*/".concat("*"),
                Be = rt.createElement("a");
            Be.href = Ee.href, yt.extend({
                active: 0,
                lastModified: {},
                etag: {},
                ajaxSettings: {
                    url: Ee.href,
                    type: "GET",
                    isLocal: Re.test(Ee.protocol),
                    global: !0,
                    processData: !0,
                    async: !0,
                    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                    accepts: {
                        "*": Ue,
                        text: "text/plain",
                        html: "text/html",
                        xml: "application/xml, text/xml",
                        json: "application/json, text/javascript"
                    },
                    contents: {
                        xml: /\bxml\b/,
                        html: /\bhtml/,
                        json: /\bjson\b/
                    },
                    responseFields: {
                        xml: "responseXML",
                        text: "responseText",
                        json: "responseJSON"
                    },
                    converters: {
                        "* text": String,
                        "text html": !0,
                        "text json": JSON.parse,
                        "text xml": yt.parseXML
                    },
                    flatOptions: {
                        url: !0,
                        context: !0
                    }
                },
                ajaxSetup: function(t, e) {
                    return e ? it(it(t, yt.ajaxSettings), e) : it(yt.ajaxSettings, t)
                },
                ajaxPrefilter: tt(We),
                ajaxTransport: tt(ze),
                ajax: function(t, e) {
                    function n(t, e, n, a) {
                        var c, p, f, w, T, x = e;
                        d || (d = !0, l && i.clearTimeout(l), o = void 0, r = a || "", k.readyState = t > 0 ? 4 : 0, c = t >= 200 && t < 300 || 304 === t, n && (w = nt(h, k, n)), w = ot(h, w, k, c), c ? (h.ifModified && (T = k.getResponseHeader("Last-Modified"), T && (yt.lastModified[s] = T), (T = k.getResponseHeader("etag")) && (yt.etag[s] = T)), 204 === t || "HEAD" === h.type ? x = "nocontent" : 304 === t ? x = "notmodified" : (x = w.state, p = w.data, f = w.error, c = !f)) : (f = x, !t && x || (x = "error", t < 0 && (t = 0))), k.status = t, k.statusText = (e || x) + "", c ? m.resolveWith(g, [p, x, k]) : m.rejectWith(g, [k, x, f]), k.statusCode(b), b = void 0, u && v.trigger(c ? "ajaxSuccess" : "ajaxError", [k, h, c ? p : f]), y.fireWith(g, [k, x]), u && (v.trigger("ajaxComplete", [k, h]), --yt.active || yt.event.trigger("ajaxStop")))
                    }
                    "object" == typeof t && (e = t, t = void 0), e = e || {};
                    var o, s, r, a, l, c, d, u, p, f, h = yt.ajaxSetup({}, e),
                        g = h.context || h,
                        v = h.context && (g.nodeType || g.jquery) ? yt(g) : yt.event,
                        m = yt.Deferred(),
                        y = yt.Callbacks("once memory"),
                        b = h.statusCode || {},
                        w = {},
                        T = {},
                        x = "canceled",
                        k = {
                            readyState: 0,
                            getResponseHeader: function(t) {
                                var e;
                                if (d) {
                                    if (!a)
                                        for (a = {}; e = qe.exec(r);) a[e[1].toLowerCase()] = e[2];
                                    e = a[t.toLowerCase()]
                                }
                                return null == e ? null : e
                            },
                            getAllResponseHeaders: function() {
                                return d ? r : null
                            },
                            setRequestHeader: function(t, e) {
                                return null == d && (t = T[t.toLowerCase()] = T[t.toLowerCase()] || t, w[t] = e), this
                            },
                            overrideMimeType: function(t) {
                                return null == d && (h.mimeType = t), this
                            },
                            statusCode: function(t) {
                                var e;
                                if (t)
                                    if (d) k.always(t[k.status]);
                                    else
                                        for (e in t) b[e] = [b[e], t[e]];
                                return this
                            },
                            abort: function(t) {
                                var e = t || x;
                                return o && o.abort(e), n(0, e), this
                            }
                        };
                    if (m.promise(k), h.url = ((t || h.url || Ee.href) + "").replace(Fe, Ee.protocol + "//"), h.type = e.method || e.type || h.method || h.type, h.dataTypes = (h.dataType || "*").toLowerCase().match(It) || [""], null == h.crossDomain) {
                        c = rt.createElement("a");
                        try {
                            c.href = h.url, c.href = c.href, h.crossDomain = Be.protocol + "//" + Be.host != c.protocol + "//" + c.host
                        } catch (t) {
                            h.crossDomain = !0
                        }
                    }
                    if (h.data && h.processData && "string" != typeof h.data && (h.data = yt.param(h.data, h.traditional)), et(We, h, e, k), d) return k;
                    u = yt.event && h.global, u && 0 == yt.active++ && yt.event.trigger("ajaxStart"), h.type = h.type.toUpperCase(), h.hasContent = !Me.test(h.type), s = h.url.replace(Pe, ""), h.hasContent ? h.data && h.processData && 0 === (h.contentType || "").indexOf("application/x-www-form-urlencoded") && (h.data = h.data.replace(Le, "+")) : (f = h.url.slice(s.length), h.data && (s += (De.test(s) ? "&" : "?") + h.data, delete h.data), !1 === h.cache && (s = s.replace(He, "$1"), f = (De.test(s) ? "&" : "?") + "_=" + Ae++ + f), h.url = s + f), h.ifModified && (yt.lastModified[s] && k.setRequestHeader("If-Modified-Since", yt.lastModified[s]), yt.etag[s] && k.setRequestHeader("If-None-Match", yt.etag[s])), (h.data && h.hasContent && !1 !== h.contentType || e.contentType) && k.setRequestHeader("Content-Type", h.contentType), k.setRequestHeader("Accept", h.dataTypes[0] && h.accepts[h.dataTypes[0]] ? h.accepts[h.dataTypes[0]] + ("*" !== h.dataTypes[0] ? ", " + Ue + "; q=0.01" : "") : h.accepts["*"]);
                    for (p in h.headers) k.setRequestHeader(p, h.headers[p]);
                    if (h.beforeSend && (!1 === h.beforeSend.call(g, k, h) || d)) return k.abort();
                    if (x = "abort", y.add(h.complete), k.done(h.success), k.fail(h.error), o = et(ze, h, e, k)) {
                        if (k.readyState = 1, u && v.trigger("ajaxSend", [k, h]), d) return k;
                        h.async && h.timeout > 0 && (l = i.setTimeout((function() {
                            k.abort("timeout")
                        }), h.timeout));
                        try {
                            d = !1, o.send(w, n)
                        } catch (t) {
                            if (d) throw t;
                            n(-1, t)
                        }
                    } else n(-1, "No Transport");
                    return k
                },
                getJSON: function(t, e, i) {
                    return yt.get(t, e, i, "json")
                },
                getScript: function(t, e) {
                    return yt.get(t, void 0, e, "script")
                }
            }), yt.each(["get", "post"], (function(t, e) {
                yt[e] = function(t, i, n, o) {
                    return yt.isFunction(i) && (o = o || n, n = i, i = void 0), yt.ajax(yt.extend({
                        url: t,
                        type: e,
                        dataType: o,
                        data: i,
                        success: n
                    }, yt.isPlainObject(t) && t))
                }
            })), yt._evalUrl = function(t) {
                return yt.ajax({
                    url: t,
                    type: "GET",
                    dataType: "script",
                    cache: !0,
                    async: !1,
                    global: !1,
                    throws: !0
                })
            }, yt.fn.extend({
                wrapAll: function(t) {
                    var e;
                    return this[0] && (yt.isFunction(t) && (t = t.call(this[0])), e = yt(t, this[0].ownerDocument).eq(0).clone(!0), this[0].parentNode && e.insertBefore(this[0]), e.map((function() {
                        for (var t = this; t.firstElementChild;) t = t.firstElementChild;
                        return t
                    })).append(this)), this
                },
                wrapInner: function(t) {
                    return yt.isFunction(t) ? this.each((function(e) {
                        yt(this).wrapInner(t.call(this, e))
                    })) : this.each((function() {
                        var e = yt(this),
                            i = e.contents();
                        i.length ? i.wrapAll(t) : e.append(t)
                    }))
                },
                wrap: function(t) {
                    var e = yt.isFunction(t);
                    return this.each((function(i) {
                        yt(this).wrapAll(e ? t.call(this, i) : t)
                    }))
                },
                unwrap: function(t) {
                    return this.parent(t).not("body").each((function() {
                        yt(this).replaceWith(this.childNodes)
                    })), this
                }
            }), yt.expr.pseudos.hidden = function(t) {
                return !yt.expr.pseudos.visible(t)
            }, yt.expr.pseudos.visible = function(t) {
                return !!(t.offsetWidth || t.offsetHeight || t.getClientRects().length)
            }, yt.ajaxSettings.xhr = function() {
                try {
                    return new i.XMLHttpRequest
                } catch (t) {}
            };
            var _e = {
                    0: 200,
                    1223: 204
                },
                Xe = yt.ajaxSettings.xhr();
            mt.cors = !!Xe && "withCredentials" in Xe, mt.ajax = Xe = !!Xe, yt.ajaxTransport((function(t) {
                var e, n;
                if (mt.cors || Xe && !t.crossDomain) return {
                    send: function(o, s) {
                        var r, a = t.xhr();
                        if (a.open(t.type, t.url, t.async, t.username, t.password), t.xhrFields)
                            for (r in t.xhrFields) a[r] = t.xhrFields[r];
                        t.mimeType && a.overrideMimeType && a.overrideMimeType(t.mimeType), t.crossDomain || o["X-Requested-With"] || (o["X-Requested-With"] = "XMLHttpRequest");
                        for (r in o) a.setRequestHeader(r, o[r]);
                        e = function(t) {
                            return function() {
                                e && (e = n = a.onload = a.onerror = a.onabort = a.onreadystatechange = null, "abort" === t ? a.abort() : "error" === t ? "number" != typeof a.status ? s(0, "error") : s(a.status, a.statusText) : s(_e[a.status] || a.status, a.statusText, "text" !== (a.responseType || "text") || "string" != typeof a.responseText ? {
                                    binary: a.response
                                } : {
                                    text: a.responseText
                                }, a.getAllResponseHeaders()))
                            }
                        }, a.onload = e(), n = a.onerror = e("error"), void 0 !== a.onabort ? a.onabort = n : a.onreadystatechange = function() {
                            4 === a.readyState && i.setTimeout((function() {
                                e && n()
                            }))
                        }, e = e("abort");
                        try {
                            a.send(t.hasContent && t.data || null)
                        } catch (t) {
                            if (e) throw t
                        }
                    },
                    abort: function() {
                        e && e()
                    }
                }
            })), yt.ajaxPrefilter((function(t) {
                t.crossDomain && (t.contents.script = !1)
            })), yt.ajaxSetup({
                accepts: {
                    script: "text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"
                },
                contents: {
                    script: /\b(?:java|ecma)script\b/
                },
                converters: {
                    "text script": function(t) {
                        return yt.globalEval(t), t
                    }
                }
            }), yt.ajaxPrefilter("script", (function(t) {
                void 0 === t.cache && (t.cache = !1), t.crossDomain && (t.type = "GET")
            })), yt.ajaxTransport("script", (function(t) {
                if (t.crossDomain) {
                    var e, i;
                    return {
                        send: function(n, o) {
                            e = yt("<script>").prop({
                                charset: t.scriptCharset,
                                src: t.url
                            }).on("load error", i = function(t) {
                                e.remove(), i = null, t && o("error" === t.type ? 404 : 200, t.type)
                            }), rt.head.appendChild(e[0])
                        },
                        abort: function() {
                            i && i()
                        }
                    }
                }
            }));
            var Ve = [],
                Ye = /(=)\?(?=&|$)|\?\?/;
            yt.ajaxSetup({
                jsonp: "callback",
                jsonpCallback: function() {
                    var t = Ve.pop() || yt.expando + "_" + Ae++;
                    return this[t] = !0, t
                }
            }), yt.ajaxPrefilter("json jsonp", (function(t, e, n) {
                var o, s, r, a = !1 !== t.jsonp && (Ye.test(t.url) ? "url" : "string" == typeof t.data && 0 === (t.contentType || "").indexOf("application/x-www-form-urlencoded") && Ye.test(t.data) && "data");
                if (a || "jsonp" === t.dataTypes[0]) return o = t.jsonpCallback = yt.isFunction(t.jsonpCallback) ? t.jsonpCallback() : t.jsonpCallback, a ? t[a] = t[a].replace(Ye, "$1" + o) : !1 !== t.jsonp && (t.url += (De.test(t.url) ? "&" : "?") + t.jsonp + "=" + o), t.converters["script json"] = function() {
                    return r || yt.error(o + " was not called"), r[0]
                }, t.dataTypes[0] = "json", s = i[o], i[o] = function() {
                    r = arguments
                }, n.always((function() {
                    void 0 === s ? yt(i).removeProp(o) : i[o] = s, t[o] && (t.jsonpCallback = e.jsonpCallback, Ve.push(o)), r && yt.isFunction(s) && s(r[0]), r = s = void 0
                })), "script"
            })), mt.createHTMLDocument = (function() {
                var t = rt.implementation.createHTMLDocument("").body;
                return t.innerHTML = "<form></form><form></form>", 2 === t.childNodes.length
            })(), yt.parseHTML = function(t, e, i) {
                if ("string" != typeof t) return [];
                "boolean" == typeof e && (i = e, e = !1);
                var n, o, s;
                return e || (mt.createHTMLDocument ? (e = rt.implementation.createHTMLDocument(""), n = e.createElement("base"), n.href = rt.location.href, e.head.appendChild(n)) : e = rt), o = Et.exec(t), s = !i && [], o ? [e.createElement(o[1])] : (o = C([t], e, s), s && s.length && yt(s).remove(), yt.merge([], o.childNodes))
            }, yt.fn.load = function(t, e, i) {
                var n, o, s, r = this,
                    a = t.indexOf(" ");
                return a > -1 && (n = Q(t.slice(a)), t = t.slice(0, a)), yt.isFunction(e) ? (i = e, e = void 0) : e && "object" == typeof e && (o = "POST"), r.length > 0 && yt.ajax({
                    url: t,
                    type: o || "GET",
                    dataType: "html",
                    data: e
                }).done((function(t) {
                    s = arguments, r.html(n ? yt("<div>").append(yt.parseHTML(t)).find(n) : t)
                })).always(i && function(t, e) {
                    r.each((function() {
                        i.apply(this, s || [t.responseText, e, t])
                    }))
                }), this
            }, yt.each(["ajaxStart", "ajaxStop", "ajaxComplete", "ajaxError", "ajaxSuccess", "ajaxSend"], (function(t, e) {
                yt.fn[e] = function(t) {
                    return this.on(e, t)
                }
            })), yt.expr.pseudos.animated = function(t) {
                return yt.grep(yt.timers, (function(e) {
                    return t === e.elem
                })).length
            }, yt.offset = {
                setOffset: function(t, e, i) {
                    var n, o, s, r, a, l, c, d = yt.css(t, "position"),
                        u = yt(t),
                        p = {};
                    "static" === d && (t.style.position = "relative"), a = u.offset(), s = yt.css(t, "top"), l = yt.css(t, "left"), c = ("absolute" === d || "fixed" === d) && (s + l).indexOf("auto") > -1, c ? (n = u.position(), r = n.top, o = n.left) : (r = parseFloat(s) || 0, o = parseFloat(l) || 0), yt.isFunction(e) && (e = e.call(t, i, yt.extend({}, a))), null != e.top && (p.top = e.top - a.top + r), null != e.left && (p.left = e.left - a.left + o), "using" in e ? e.using.call(t, p) : u.css(p)
                }
            }, yt.fn.extend({
                offset: function(t) {
                    if (arguments.length) return void 0 === t ? this : this.each((function(e) {
                        yt.offset.setOffset(this, t, e)
                    }));
                    var e, i, n, o, s = this[0];
                    if (s) return s.getClientRects().length ? (n = s.getBoundingClientRect(), e = s.ownerDocument, i = e.documentElement, o = e.defaultView, {
                        top: n.top + o.pageYOffset - i.clientTop,
                        left: n.left + o.pageXOffset - i.clientLeft
                    }) : {
                        top: 0,
                        left: 0
                    }
                },
                position: function() {
                    if (this[0]) {
                        var t, e, i = this[0],
                            n = {
                                top: 0,
                                left: 0
                            };
                        return "fixed" === yt.css(i, "position") ? e = i.getBoundingClientRect() : (t = this.offsetParent(), e = this.offset(), l(t[0], "html") || (n = t.offset()), n = {
                            top: n.top + yt.css(t[0], "borderTopWidth", !0),
                            left: n.left + yt.css(t[0], "borderLeftWidth", !0)
                        }), {
                            top: e.top - n.top - yt.css(i, "marginTop", !0),
                            left: e.left - n.left - yt.css(i, "marginLeft", !0)
                        }
                    }
                },
                offsetParent: function() {
                    return this.map((function() {
                        for (var t = this.offsetParent; t && "static" === yt.css(t, "position");) t = t.offsetParent;
                        return t || Zt
                    }))
                }
            }), yt.each({
                scrollLeft: "pageXOffset",
                scrollTop: "pageYOffset"
            }, (function(t, e) {
                var i = "pageYOffset" === e;
                yt.fn[t] = function(n) {
                    return Ht(this, (function(t, n, o) {
                        var s;
                        if (yt.isWindow(t) ? s = t : 9 === t.nodeType && (s = t.defaultView), void 0 === o) return s ? s[e] : t[n];
                        s ? s.scrollTo(i ? s.pageXOffset : o, i ? o : s.pageYOffset) : t[n] = o
                    }), t, n, arguments.length)
                }
            })), yt.each(["top", "left"], (function(t, e) {
                yt.cssHooks[e] = q(mt.pixelPosition, (function(t, i) {
                    if (i) return i = H(t, e), ce.test(i) ? yt(t).position()[e] + "px" : i
                }))
            })), yt.each({
                Height: "height",
                Width: "width"
            }, (function(t, e) {
                yt.each({
                    padding: "inner" + t,
                    content: e,
                    "": "outer" + t
                }, (function(i, n) {
                    yt.fn[n] = function(o, s) {
                        var r = arguments.length && (i || "boolean" != typeof o),
                            a = i || (!0 === o || !0 === s ? "margin" : "border");
                        return Ht(this, (function(e, i, o) {
                            var s;
                            return yt.isWindow(e) ? 0 === n.indexOf("outer") ? e["inner" + t] : e.document.documentElement["client" + t] : 9 === e.nodeType ? (s = e.documentElement, Math.max(e.body["scroll" + t], s["scroll" + t], e.body["offset" + t], s["offset" + t], s["client" + t])) : void 0 === o ? yt.css(e, i, a) : yt.style(e, i, o, a)
                        }), e, r ? o : void 0, r)
                    }
                }))
            })), yt.fn.extend({
                bind: function(t, e, i) {
                    return this.on(t, null, e, i)
                },
                unbind: function(t, e) {
                    return this.off(t, null, e)
                },
                delegate: function(t, e, i, n) {
                    return this.on(e, t, i, n)
                },
                undelegate: function(t, e, i) {
                    return 1 === arguments.length ? this.off(t, "**") : this.off(e, t || "**", i)
                }
            }), yt.holdReady = function(t) {
                t ? yt.readyWait++ : yt.ready(!0)
            }, yt.isArray = Array.isArray, yt.parseJSON = JSON.parse, yt.nodeName = l, n = [], void 0 !== (o = function() {
                return yt
            }.apply(e, n)) && (t.exports = o);
            var Ge = i.jQuery,
                Je = i.$;
            return yt.noConflict = function(t) {
                return i.$ === yt && (i.$ = Je), t && i.jQuery === yt && (i.jQuery = Ge), yt
            }, s || (i.jQuery = i.$ = yt), yt
        }))
    },
    "9kJc": function(t, e) {},
    K3J8: function(t, e, i) {
        (function(t) {
            if (void 0 === t) throw new Error("Bootstrap's JavaScript requires jQuery"); + (function(t) {
                "use strict";
                var e = t.fn.jquery.split(" ")[0].split(".");
                if (e[0] < 2 && e[1] < 9 || 1 == e[0] && 9 == e[1] && e[2] < 1 || e[0] > 3) throw new Error("Bootstrap's JavaScript requires jQuery version 1.9.1 or higher, but lower than version 4")
            })(t), (function(t) {
                "use strict";

                function e() {
                    var t = document.createElement("bootstrap"),
                        e = {
                            WebkitTransition: "webkitTransitionEnd",
                            MozTransition: "transitionend",
                            OTransition: "oTransitionEnd otransitionend",
                            transition: "transitionend"
                        };
                    for (var i in e)
                        if (void 0 !== t.style[i]) return {
                            end: e[i]
                        };
                    return !1
                }
                t.fn.emulateTransitionEnd = function(e) {
                    var i = !1,
                        n = this;
                    t(this).one("bsTransitionEnd", (function() {
                        i = !0
                    }));
                    var o = function() {
                        i || t(n).trigger(t.support.transition.end)
                    };
                    return setTimeout(o, e), this
                }, t((function() {
                    t.support.transition = e(), t.support.transition && (t.event.special.bsTransitionEnd = {
                        bindType: t.support.transition.end,
                        delegateType: t.support.transition.end,
                        handle: function(e) {
                            if (t(e.target).is(this)) return e.handleObj.handler.apply(this, arguments)
                        }
                    })
                }))
            })(t), (function(t) {
                "use strict";

                function e(e) {
                    return this.each((function() {
                        var i = t(this),
                            o = i.data("bs.alert");
                        o || i.data("bs.alert", o = new n(this)), "string" == typeof e && o[e].call(i)
                    }))
                }
                var i = '[data-dismiss="alert"]',
                    n = function(e) {
                        t(e).on("click", i, this.close)
                    };
                n.VERSION = "3.3.7", n.TRANSITION_DURATION = 150, n.prototype.close = function(e) {
                    function i() {
                        r.detach().trigger("closed.bs.alert").remove()
                    }
                    var o = t(this),
                        s = o.attr("data-target");
                    s || (s = o.attr("href"), s = s && s.replace(/.*(?=#[^\s]*$)/, ""));
                    var r = t("#" === s ? [] : s);
                    e && e.preventDefault(), r.length || (r = o.closest(".alert")), r.trigger(e = t.Event("close.bs.alert")), e.isDefaultPrevented() || (r.removeClass("in"), t.support.transition && r.hasClass("fade") ? r.one("bsTransitionEnd", i).emulateTransitionEnd(n.TRANSITION_DURATION) : i())
                };
                var o = t.fn.alert;
                t.fn.alert = e, t.fn.alert.Constructor = n, t.fn.alert.noConflict = function() {
                    return t.fn.alert = o, this
                }, t(document).on("click.bs.alert.data-api", i, n.prototype.close)
            })(t), (function(t) {
                "use strict";

                function e(e) {
                    return this.each((function() {
                        var n = t(this),
                            o = n.data("bs.button"),
                            s = "object" == typeof e && e;
                        o || n.data("bs.button", o = new i(this, s)), "toggle" == e ? o.toggle() : e && o.setState(e)
                    }))
                }
                var i = function(e, n) {
                    this.$element = t(e), this.options = t.extend({}, i.DEFAULTS, n), this.isLoading = !1
                };
                i.VERSION = "3.3.7", i.DEFAULTS = {
                    loadingText: "loading..."
                }, i.prototype.setState = function(e) {
                    var i = "disabled",
                        n = this.$element,
                        o = n.is("input") ? "val" : "html",
                        s = n.data();
                    e += "Text", null == s.resetText && n.data("resetText", n[o]()), setTimeout(t.proxy((function() {
                        n[o](null == s[e] ? this.options[e] : s[e]), "loadingText" == e ? (this.isLoading = !0, n.addClass(i).attr(i, i).prop(i, !0)) : this.isLoading && (this.isLoading = !1, n.removeClass(i).removeAttr(i).prop(i, !1))
                    }), this), 0)
                }, i.prototype.toggle = function() {
                    var t = !0,
                        e = this.$element.closest('[data-toggle="buttons"]');
                    if (e.length) {
                        var i = this.$element.find("input");
                        "radio" == i.prop("type") ? (i.prop("checked") && (t = !1), e.find(".active").removeClass("active"), this.$element.addClass("active")) : "checkbox" == i.prop("type") && (i.prop("checked") !== this.$element.hasClass("active") && (t = !1), this.$element.toggleClass("active")), i.prop("checked", this.$element.hasClass("active")), t && i.trigger("change")
                    } else this.$element.attr("aria-pressed", !this.$element.hasClass("active")), this.$element.toggleClass("active")
                };
                var n = t.fn.button;
                t.fn.button = e, t.fn.button.Constructor = i, t.fn.button.noConflict = function() {
                    return t.fn.button = n, this
                }, t(document).on("click.bs.button.data-api", '[data-toggle^="button"]', (function(i) {
                    var n = t(i.target).closest(".btn");
                    e.call(n, "toggle"), t(i.target).is('input[type="radio"], input[type="checkbox"]') || (i.preventDefault(), n.is("input,button") ? n.trigger("focus") : n.find("input:visible,button:visible").first().trigger("focus"))
                })).on("focus.bs.button.data-api blur.bs.button.data-api", '[data-toggle^="button"]', (function(e) {
                    t(e.target).closest(".btn").toggleClass("focus", /^focus(in)?$/.test(e.type))
                }))
            })(t), (function(t) {
                "use strict";

                function e(e) {
                    return this.each((function() {
                        var n = t(this),
                            o = n.data("bs.carousel"),
                            s = t.extend({}, i.DEFAULTS, n.data(), "object" == typeof e && e),
                            r = "string" == typeof e ? e : s.slide;
                        o || n.data("bs.carousel", o = new i(this, s)), "number" == typeof e ? o.to(e) : r ? o[r]() : s.interval && o.pause().cycle()
                    }))
                }
                var i = function(e, i) {
                    this.$element = t(e), this.$indicators = this.$element.find(".carousel-indicators"), this.options = i, this.paused = null, this.sliding = null, this.interval = null, this.$active = null, this.$items = null, this.options.keyboard && this.$element.on("keydown.bs.carousel", t.proxy(this.keydown, this)), "hover" == this.options.pause && !("ontouchstart" in document.documentElement) && this.$element.on("mouseenter.bs.carousel", t.proxy(this.pause, this)).on("mouseleave.bs.carousel", t.proxy(this.cycle, this))
                };
                i.VERSION = "3.3.7", i.TRANSITION_DURATION = 600, i.DEFAULTS = {
                    interval: 5e3,
                    pause: "hover",
                    wrap: !0,
                    keyboard: !0
                }, i.prototype.keydown = function(t) {
                    if (!/input|textarea/i.test(t.target.tagName)) {
                        switch (t.which) {
                            case 37:
                                this.prev();
                                break;
                            case 39:
                                this.next();
                                break;
                            default:
                                return
                        }
                        t.preventDefault()
                    }
                }, i.prototype.cycle = function(e) {
                    return e || (this.paused = !1), this.interval && clearInterval(this.interval), this.options.interval && !this.paused && (this.interval = setInterval(t.proxy(this.next, this), this.options.interval)), this
                }, i.prototype.getItemIndex = function(t) {
                    return this.$items = t.parent().children(".item"), this.$items.index(t || this.$active)
                }, i.prototype.getItemForDirection = function(t, e) {
                    var i = this.getItemIndex(e);
                    if (("prev" == t && 0 === i || "next" == t && i == this.$items.length - 1) && !this.options.wrap) return e;
                    var n = "prev" == t ? -1 : 1,
                        o = (i + n) % this.$items.length;
                    return this.$items.eq(o)
                }, i.prototype.to = function(t) {
                    var e = this,
                        i = this.getItemIndex(this.$active = this.$element.find(".item.active"));
                    if (!(t > this.$items.length - 1 || t < 0)) return this.sliding ? this.$element.one("slid.bs.carousel", (function() {
                        e.to(t)
                    })) : i == t ? this.pause().cycle() : this.slide(t > i ? "next" : "prev", this.$items.eq(t))
                }, i.prototype.pause = function(e) {
                    return e || (this.paused = !0), this.$element.find(".next, .prev").length && t.support.transition && (this.$element.trigger(t.support.transition.end), this.cycle(!0)), this.interval = clearInterval(this.interval), this
                }, i.prototype.next = function() {
                    if (!this.sliding) return this.slide("next")
                }, i.prototype.prev = function() {
                    if (!this.sliding) return this.slide("prev")
                }, i.prototype.slide = function(e, n) {
                    var o = this.$element.find(".item.active"),
                        s = n || this.getItemForDirection(e, o),
                        r = this.interval,
                        a = "next" == e ? "left" : "right",
                        l = this;
                    if (s.hasClass("active")) return this.sliding = !1;
                    var c = s[0],
                        d = t.Event("slide.bs.carousel", {
                            relatedTarget: c,
                            direction: a
                        });
                    if (this.$element.trigger(d), !d.isDefaultPrevented()) {
                        if (this.sliding = !0, r && this.pause(), this.$indicators.length) {
                            this.$indicators.find(".active").removeClass("active");
                            var u = t(this.$indicators.children()[this.getItemIndex(s)]);
                            u && u.addClass("active")
                        }
                        var p = t.Event("slid.bs.carousel", {
                            relatedTarget: c,
                            direction: a
                        });
                        return t.support.transition && this.$element.hasClass("slide") ? (s.addClass(e), s[0].offsetWidth, o.addClass(a), s.addClass(a), o.one("bsTransitionEnd", (function() {
                            s.removeClass([e, a].join(" ")).addClass("active"), o.removeClass(["active", a].join(" ")), l.sliding = !1, setTimeout((function() {
                                l.$element.trigger(p)
                            }), 0)
                        })).emulateTransitionEnd(i.TRANSITION_DURATION)) : (o.removeClass("active"), s.addClass("active"), this.sliding = !1, this.$element.trigger(p)), r && this.cycle(), this
                    }
                };
                var n = t.fn.carousel;
                t.fn.carousel = e, t.fn.carousel.Constructor = i, t.fn.carousel.noConflict = function() {
                    return t.fn.carousel = n, this
                };
                var o = function(i) {
                    var n, o = t(this),
                        s = t(o.attr("data-target") || (n = o.attr("href")) && n.replace(/.*(?=#[^\s]+$)/, ""));
                    if (s.hasClass("carousel")) {
                        var r = t.extend({}, s.data(), o.data()),
                            a = o.attr("data-slide-to");
                        a && (r.interval = !1), e.call(s, r), a && s.data("bs.carousel").to(a), i.preventDefault()
                    }
                };
                t(document).on("click.bs.carousel.data-api", "[data-slide]", o).on("click.bs.carousel.data-api", "[data-slide-to]", o), t(window).on("load", (function() {
                    t('[data-ride="carousel"]').each((function() {
                        var i = t(this);
                        e.call(i, i.data())
                    }))
                }))
            })(t), (function(t) {
                "use strict";

                function e(e) {
                    var i, n = e.attr("data-target") || (i = e.attr("href")) && i.replace(/.*(?=#[^\s]+$)/, "");
                    return t(n)
                }

                function i(e) {
                    return this.each((function() {
                        var i = t(this),
                            o = i.data("bs.collapse"),
                            s = t.extend({}, n.DEFAULTS, i.data(), "object" == typeof e && e);
                        !o && s.toggle && /show|hide/.test(e) && (s.toggle = !1), o || i.data("bs.collapse", o = new n(this, s)), "string" == typeof e && o[e]()
                    }))
                }
                var n = function(e, i) {
                    this.$element = t(e), this.options = t.extend({}, n.DEFAULTS, i), this.$trigger = t('[data-toggle="collapse"][href="#' + e.id + '"],[data-toggle="collapse"][data-target="#' + e.id + '"]'), this.transitioning = null, this.options.parent ? this.$parent = this.getParent() : this.addAriaAndCollapsedClass(this.$element, this.$trigger), this.options.toggle && this.toggle()
                };
                n.VERSION = "3.3.7", n.TRANSITION_DURATION = 350, n.DEFAULTS = {
                    toggle: !0
                }, n.prototype.dimension = function() {
                    return this.$element.hasClass("width") ? "width" : "height"
                }, n.prototype.show = function() {
                    if (!this.transitioning && !this.$element.hasClass("in")) {
                        var e, o = this.$parent && this.$parent.children(".panel").children(".in, .collapsing");
                        if (!(o && o.length && (e = o.data("bs.collapse")) && e.transitioning)) {
                            var s = t.Event("show.bs.collapse");
                            if (this.$element.trigger(s), !s.isDefaultPrevented()) {
                                o && o.length && (i.call(o, "hide"), e || o.data("bs.collapse", null));
                                var r = this.dimension();
                                this.$element.removeClass("collapse").addClass("collapsing")[r](0).attr("aria-expanded", !0), this.$trigger.removeClass("collapsed").attr("aria-expanded", !0), this.transitioning = 1;
                                var a = function() {
                                    this.$element.removeClass("collapsing").addClass("collapse in")[r](""), this.transitioning = 0, this.$element.trigger("shown.bs.collapse")
                                };
                                if (!t.support.transition) return a.call(this);
                                var l = t.camelCase(["scroll", r].join("-"));
                                this.$element.one("bsTransitionEnd", t.proxy(a, this)).emulateTransitionEnd(n.TRANSITION_DURATION)[r](this.$element[0][l])
                            }
                        }
                    }
                }, n.prototype.hide = function() {
                    if (!this.transitioning && this.$element.hasClass("in")) {
                        var e = t.Event("hide.bs.collapse");
                        if (this.$element.trigger(e), !e.isDefaultPrevented()) {
                            var i = this.dimension();
                            this.$element[i](this.$element[i]())[0].offsetHeight, this.$element.addClass("collapsing").removeClass("collapse in").attr("aria-expanded", !1), this.$trigger.addClass("collapsed").attr("aria-expanded", !1), this.transitioning = 1;
                            var o = function() {
                                this.transitioning = 0, this.$element.removeClass("collapsing").addClass("collapse").trigger("hidden.bs.collapse")
                            };
                            if (!t.support.transition) return o.call(this);
                            this.$element[i](0).one("bsTransitionEnd", t.proxy(o, this)).emulateTransitionEnd(n.TRANSITION_DURATION)
                        }
                    }
                }, n.prototype.toggle = function() {
                    this[this.$element.hasClass("in") ? "hide" : "show"]()
                }, n.prototype.getParent = function() {
                    return t(this.options.parent).find('[data-toggle="collapse"][data-parent="' + this.options.parent + '"]').each(t.proxy((function(i, n) {
                        var o = t(n);
                        this.addAriaAndCollapsedClass(e(o), o)
                    }), this)).end()
                }, n.prototype.addAriaAndCollapsedClass = function(t, e) {
                    var i = t.hasClass("in");
                    t.attr("aria-expanded", i), e.toggleClass("collapsed", !i).attr("aria-expanded", i)
                };
                var o = t.fn.collapse;
                t.fn.collapse = i, t.fn.collapse.Constructor = n, t.fn.collapse.noConflict = function() {
                    return t.fn.collapse = o, this
                }, t(document).on("click.bs.collapse.data-api", '[data-toggle="collapse"]', (function(n) {
                    var o = t(this);
                    o.attr("data-target") || n.preventDefault();
                    var s = e(o),
                        r = s.data("bs.collapse"),
                        a = r ? "toggle" : o.data();
                    i.call(s, a)
                }))
            })(t), (function(t) {
                "use strict";

                function e(e) {
                    var i = e.attr("data-target");
                    i || (i = e.attr("href"), i = i && /#[A-Za-z]/.test(i) && i.replace(/.*(?=#[^\s]*$)/, ""));
                    var n = i && t(i);
                    return n && n.length ? n : e.parent()
                }

                function i(i) {
                    i && 3 === i.which || (t(o).remove(), t(s).each((function() {
                        var n = t(this),
                            o = e(n),
                            s = {
                                relatedTarget: this
                            };
                        o.hasClass("open") && (i && "click" == i.type && /input|textarea/i.test(i.target.tagName) && t.contains(o[0], i.target) || (o.trigger(i = t.Event("hide.bs.dropdown", s)), i.isDefaultPrevented() || (n.attr("aria-expanded", "false"), o.removeClass("open").trigger(t.Event("hidden.bs.dropdown", s)))))
                    })))
                }

                function n(e) {
                    return this.each((function() {
                        var i = t(this),
                            n = i.data("bs.dropdown");
                        n || i.data("bs.dropdown", n = new r(this)), "string" == typeof e && n[e].call(i)
                    }))
                }
                var o = ".dropdown-backdrop",
                    s = '[data-toggle="dropdown"]',
                    r = function(e) {
                        t(e).on("click.bs.dropdown", this.toggle)
                    };
                r.VERSION = "3.3.7", r.prototype.toggle = function(n) {
                    var o = t(this);
                    if (!o.is(".disabled, :disabled")) {
                        var s = e(o),
                            r = s.hasClass("open");
                        if (i(), !r) {
                            "ontouchstart" in document.documentElement && !s.closest(".navbar-nav").length && t(document.createElement("div")).addClass("dropdown-backdrop").insertAfter(t(this)).on("click", i);
                            var a = {
                                relatedTarget: this
                            };
                            if (s.trigger(n = t.Event("show.bs.dropdown", a)), n.isDefaultPrevented()) return;
                            o.trigger("focus").attr("aria-expanded", "true"), s.toggleClass("open").trigger(t.Event("shown.bs.dropdown", a))
                        }
                        return !1
                    }
                }, r.prototype.keydown = function(i) {
                    if (/(38|40|27|32)/.test(i.which) && !/input|textarea/i.test(i.target.tagName)) {
                        var n = t(this);
                        if (i.preventDefault(), i.stopPropagation(), !n.is(".disabled, :disabled")) {
                            var o = e(n),
                                r = o.hasClass("open");
                            if (!r && 27 != i.which || r && 27 == i.which) return 27 == i.which && o.find(s).trigger("focus"), n.trigger("click");
                            var a = o.find(".dropdown-menu li:not(.disabled):visible a");
                            if (a.length) {
                                var l = a.index(i.target);
                                38 == i.which && l > 0 && l--, 40 == i.which && l < a.length - 1 && l++, ~l || (l = 0), a.eq(l).trigger("focus")
                            }
                        }
                    }
                };
                var a = t.fn.dropdown;
                t.fn.dropdown = n, t.fn.dropdown.Constructor = r, t.fn.dropdown.noConflict = function() {
                    return t.fn.dropdown = a, this
                }, t(document).on("click.bs.dropdown.data-api", i).on("click.bs.dropdown.data-api", ".dropdown form", (function(t) {
                    t.stopPropagation()
                })).on("click.bs.dropdown.data-api", s, r.prototype.toggle).on("keydown.bs.dropdown.data-api", s, r.prototype.keydown).on("keydown.bs.dropdown.data-api", ".dropdown-menu", r.prototype.keydown)
            })(t), (function(t) {
                "use strict";

                function e(e, n) {
                    return this.each((function() {
                        var o = t(this),
                            s = o.data("bs.modal"),
                            r = t.extend({}, i.DEFAULTS, o.data(), "object" == typeof e && e);
                        s || o.data("bs.modal", s = new i(this, r)), "string" == typeof e ? s[e](n) : r.show && s.show(n)
                    }))
                }
                var i = function(e, i) {
                    this.options = i, this.$body = t(document.body), this.$element = t(e), this.$dialog = this.$element.find(".modal-dialog"), this.$backdrop = null, this.isShown = null, this.originalBodyPad = null, this.scrollbarWidth = 0, this.ignoreBackdropClick = !1, this.options.remote && this.$element.find(".modal-content").load(this.options.remote, t.proxy((function() {
                        this.$element.trigger("loaded.bs.modal")
                    }), this))
                };
                i.VERSION = "3.3.7", i.TRANSITION_DURATION = 300, i.BACKDROP_TRANSITION_DURATION = 150, i.DEFAULTS = {
                    backdrop: !0,
                    keyboard: !0,
                    show: !0
                }, i.prototype.toggle = function(t) {
                    return this.isShown ? this.hide() : this.show(t)
                }, i.prototype.show = function(e) {
                    var n = this,
                        o = t.Event("show.bs.modal", {
                            relatedTarget: e
                        });
                    this.$element.trigger(o), this.isShown || o.isDefaultPrevented() || (this.isShown = !0, this.checkScrollbar(), this.setScrollbar(), this.$body.addClass("modal-open"), this.escape(), this.resize(), this.$element.on("click.dismiss.bs.modal", '[data-dismiss="modal"]', t.proxy(this.hide, this)), this.$dialog.on("mousedown.dismiss.bs.modal", (function() {
                        n.$element.one("mouseup.dismiss.bs.modal", (function(e) {
                            t(e.target).is(n.$element) && (n.ignoreBackdropClick = !0)
                        }))
                    })), this.backdrop((function() {
                        var o = t.support.transition && n.$element.hasClass("fade");
                        n.$element.parent().length || n.$element.appendTo(n.$body), n.$element.show().scrollTop(0), n.adjustDialog(), o && n.$element[0].offsetWidth, n.$element.addClass("in"), n.enforceFocus();
                        var s = t.Event("shown.bs.modal", {
                            relatedTarget: e
                        });
                        o ? n.$dialog.one("bsTransitionEnd", (function() {
                            n.$element.trigger("focus").trigger(s)
                        })).emulateTransitionEnd(i.TRANSITION_DURATION) : n.$element.trigger("focus").trigger(s)
                    })))
                }, i.prototype.hide = function(e) {
                    e && e.preventDefault(), e = t.Event("hide.bs.modal"), this.$element.trigger(e), this.isShown && !e.isDefaultPrevented() && (this.isShown = !1, this.escape(), this.resize(), t(document).off("focusin.bs.modal"), this.$element.removeClass("in").off("click.dismiss.bs.modal").off("mouseup.dismiss.bs.modal"), this.$dialog.off("mousedown.dismiss.bs.modal"), t.support.transition && this.$element.hasClass("fade") ? this.$element.one("bsTransitionEnd", t.proxy(this.hideModal, this)).emulateTransitionEnd(i.TRANSITION_DURATION) : this.hideModal())
                }, i.prototype.enforceFocus = function() {
                    t(document).off("focusin.bs.modal").on("focusin.bs.modal", t.proxy((function(t) {
                        document === t.target || this.$element[0] === t.target || this.$element.has(t.target).length || this.$element.trigger("focus")
                    }), this))
                }, i.prototype.escape = function() {
                    this.isShown && this.options.keyboard ? this.$element.on("keydown.dismiss.bs.modal", t.proxy((function(t) {
                        27 == t.which && this.hide()
                    }), this)) : this.isShown || this.$element.off("keydown.dismiss.bs.modal")
                }, i.prototype.resize = function() {
                    this.isShown ? t(window).on("resize.bs.modal", t.proxy(this.handleUpdate, this)) : t(window).off("resize.bs.modal")
                }, i.prototype.hideModal = function() {
                    var t = this;
                    this.$element.hide(), this.backdrop((function() {
                        t.$body.removeClass("modal-open"), t.resetAdjustments(), t.resetScrollbar(), t.$element.trigger("hidden.bs.modal")
                    }))
                }, i.prototype.removeBackdrop = function() {
                    this.$backdrop && this.$backdrop.remove(), this.$backdrop = null
                }, i.prototype.backdrop = function(e) {
                    var n = this,
                        o = this.$element.hasClass("fade") ? "fade" : "";
                    if (this.isShown && this.options.backdrop) {
                        var s = t.support.transition && o;
                        if (this.$backdrop = t(document.createElement("div")).addClass("modal-backdrop " + o).appendTo(this.$body), this.$element.on("click.dismiss.bs.modal", t.proxy((function(t) {
                                if (this.ignoreBackdropClick) return void(this.ignoreBackdropClick = !1);
                                t.target === t.currentTarget && ("static" == this.options.backdrop ? this.$element[0].focus() : this.hide())
                            }), this)), s && this.$backdrop[0].offsetWidth, this.$backdrop.addClass("in"), !e) return;
                        s ? this.$backdrop.one("bsTransitionEnd", e).emulateTransitionEnd(i.BACKDROP_TRANSITION_DURATION) : e()
                    } else if (!this.isShown && this.$backdrop) {
                        this.$backdrop.removeClass("in");
                        var r = function() {
                            n.removeBackdrop(), e && e()
                        };
                        t.support.transition && this.$element.hasClass("fade") ? this.$backdrop.one("bsTransitionEnd", r).emulateTransitionEnd(i.BACKDROP_TRANSITION_DURATION) : r()
                    } else e && e()
                }, i.prototype.handleUpdate = function() {
                    this.adjustDialog()
                }, i.prototype.adjustDialog = function() {
                    var t = this.$element[0].scrollHeight > document.documentElement.clientHeight;
                    this.$element.css({
                        paddingLeft: !this.bodyIsOverflowing && t ? this.scrollbarWidth : "",
                        paddingRight: this.bodyIsOverflowing && !t ? this.scrollbarWidth : ""
                    })
                }, i.prototype.resetAdjustments = function() {
                    this.$element.css({
                        paddingLeft: "",
                        paddingRight: ""
                    })
                }, i.prototype.checkScrollbar = function() {
                    var t = window.innerWidth;
                    if (!t) {
                        var e = document.documentElement.getBoundingClientRect();
                        t = e.right - Math.abs(e.left)
                    }
                    this.bodyIsOverflowing = document.body.clientWidth < t, this.scrollbarWidth = this.measureScrollbar()
                }, i.prototype.setScrollbar = function() {
                    var t = parseInt(this.$body.css("padding-right") || 0, 10);
                    this.originalBodyPad = document.body.style.paddingRight || "", this.bodyIsOverflowing && this.$body.css("padding-right", t + this.scrollbarWidth)
                }, i.prototype.resetScrollbar = function() {
                    this.$body.css("padding-right", this.originalBodyPad)
                }, i.prototype.measureScrollbar = function() {
                    var t = document.createElement("div");
                    t.className = "modal-scrollbar-measure", this.$body.append(t);
                    var e = t.offsetWidth - t.clientWidth;
                    return this.$body[0].removeChild(t), e
                };
                var n = t.fn.modal;
                t.fn.modal = e, t.fn.modal.Constructor = i, t.fn.modal.noConflict = function() {
                    return t.fn.modal = n, this
                }, t(document).on("click.bs.modal.data-api", '[data-toggle="modal"]', (function(i) {
                    var n = t(this),
                        o = n.attr("href"),
                        s = t(n.attr("data-target") || o && o.replace(/.*(?=#[^\s]+$)/, "")),
                        r = s.data("bs.modal") ? "toggle" : t.extend({
                            remote: !/#/.test(o) && o
                        }, s.data(), n.data());
                    n.is("a") && i.preventDefault(), s.one("show.bs.modal", (function(t) {
                        t.isDefaultPrevented() || s.one("hidden.bs.modal", (function() {
                            n.is(":visible") && n.trigger("focus")
                        }))
                    })), e.call(s, r, this)
                }))
            })(t), (function(t) {
                "use strict";

                function e(e) {
                    return this.each((function() {
                        var n = t(this),
                            o = n.data("bs.tooltip"),
                            s = "object" == typeof e && e;
                        !o && /destroy|hide/.test(e) || (o || n.data("bs.tooltip", o = new i(this, s)), "string" == typeof e && o[e]())
                    }))
                }
                var i = function(t, e) {
                    this.type = null, this.options = null, this.enabled = null, this.timeout = null, this.hoverState = null, this.$element = null, this.inState = null, this.init("tooltip", t, e)
                };
                i.VERSION = "3.3.7", i.TRANSITION_DURATION = 150, i.DEFAULTS = {
                    animation: !0,
                    placement: "top",
                    selector: !1,
                    template: '<div class="tooltip" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
                    trigger: "hover focus",
                    title: "",
                    delay: 0,
                    html: !1,
                    container: !1,
                    viewport: {
                        selector: "body",
                        padding: 0
                    }
                }, i.prototype.init = function(e, i, n) {
                    if (this.enabled = !0, this.type = e, this.$element = t(i), this.options = this.getOptions(n), this.$viewport = this.options.viewport && t(t.isFunction(this.options.viewport) ? this.options.viewport.call(this, this.$element) : this.options.viewport.selector || this.options.viewport), this.inState = {
                            click: !1,
                            hover: !1,
                            focus: !1
                        }, this.$element[0] instanceof document.constructor && !this.options.selector) throw new Error("`selector` option must be specified when initializing " + this.type + " on the window.document object!");
                    for (var o = this.options.trigger.split(" "), s = o.length; s--;) {
                        var r = o[s];
                        if ("click" == r) this.$element.on("click." + this.type, this.options.selector, t.proxy(this.toggle, this));
                        else if ("manual" != r) {
                            var a = "hover" == r ? "mouseenter" : "focusin",
                                l = "hover" == r ? "mouseleave" : "focusout";
                            this.$element.on(a + "." + this.type, this.options.selector, t.proxy(this.enter, this)), this.$element.on(l + "." + this.type, this.options.selector, t.proxy(this.leave, this))
                        }
                    }
                    this.options.selector ? this._options = t.extend({}, this.options, {
                        trigger: "manual",
                        selector: ""
                    }) : this.fixTitle()
                }, i.prototype.getDefaults = function() {
                    return i.DEFAULTS
                }, i.prototype.getOptions = function(e) {
                    return e = t.extend({}, this.getDefaults(), this.$element.data(), e), e.delay && "number" == typeof e.delay && (e.delay = {
                        show: e.delay,
                        hide: e.delay
                    }), e
                }, i.prototype.getDelegateOptions = function() {
                    var e = {},
                        i = this.getDefaults();
                    return this._options && t.each(this._options, (function(t, n) {
                        i[t] != n && (e[t] = n)
                    })), e
                }, i.prototype.enter = function(e) {
                    var i = e instanceof this.constructor ? e : t(e.currentTarget).data("bs." + this.type);
                    return i || (i = new this.constructor(e.currentTarget, this.getDelegateOptions()), t(e.currentTarget).data("bs." + this.type, i)), e instanceof t.Event && (i.inState["focusin" == e.type ? "focus" : "hover"] = !0), i.tip().hasClass("in") || "in" == i.hoverState ? void(i.hoverState = "in") : (clearTimeout(i.timeout), i.hoverState = "in", i.options.delay && i.options.delay.show ? void(i.timeout = setTimeout((function() {
                        "in" == i.hoverState && i.show()
                    }), i.options.delay.show)) : i.show())
                }, i.prototype.isInStateTrue = function() {
                    for (var t in this.inState)
                        if (this.inState[t]) return !0;
                    return !1
                }, i.prototype.leave = function(e) {
                    var i = e instanceof this.constructor ? e : t(e.currentTarget).data("bs." + this.type);
                    if (i || (i = new this.constructor(e.currentTarget, this.getDelegateOptions()), t(e.currentTarget).data("bs." + this.type, i)), e instanceof t.Event && (i.inState["focusout" == e.type ? "focus" : "hover"] = !1), !i.isInStateTrue()) {
                        if (clearTimeout(i.timeout), i.hoverState = "out", !i.options.delay || !i.options.delay.hide) return i.hide();
                        i.timeout = setTimeout((function() {
                            "out" == i.hoverState && i.hide()
                        }), i.options.delay.hide)
                    }
                }, i.prototype.show = function() {
                    var e = t.Event("show.bs." + this.type);
                    if (this.hasContent() && this.enabled) {
                        this.$element.trigger(e);
                        var n = t.contains(this.$element[0].ownerDocument.documentElement, this.$element[0]);
                        if (e.isDefaultPrevented() || !n) return;
                        var o = this,
                            s = this.tip(),
                            r = this.getUID(this.type);
                        this.setContent(), s.attr("id", r), this.$element.attr("aria-describedby", r), this.options.animation && s.addClass("fade");
                        var a = "function" == typeof this.options.placement ? this.options.placement.call(this, s[0], this.$element[0]) : this.options.placement,
                            l = /\s?auto?\s?/i,
                            c = l.test(a);
                        c && (a = a.replace(l, "") || "top"), s.detach().css({
                            top: 0,
                            left: 0,
                            display: "block"
                        }).addClass(a).data("bs." + this.type, this), this.options.container ? s.appendTo(this.options.container) : s.insertAfter(this.$element), this.$element.trigger("inserted.bs." + this.type);
                        var d = this.getPosition(),
                            u = s[0].offsetWidth,
                            p = s[0].offsetHeight;
                        if (c) {
                            var f = a,
                                h = this.getPosition(this.$viewport);
                            a = "bottom" == a && d.bottom + p > h.bottom ? "top" : "top" == a && d.top - p < h.top ? "bottom" : "right" == a && d.right + u > h.width ? "left" : "left" == a && d.left - u < h.left ? "right" : a, s.removeClass(f).addClass(a)
                        }
                        var g = this.getCalculatedOffset(a, d, u, p);
                        this.applyPlacement(g, a);
                        var v = function() {
                            var t = o.hoverState;
                            o.$element.trigger("shown.bs." + o.type), o.hoverState = null, "out" == t && o.leave(o)
                        };
                        t.support.transition && this.$tip.hasClass("fade") ? s.one("bsTransitionEnd", v).emulateTransitionEnd(i.TRANSITION_DURATION) : v()
                    }
                }, i.prototype.applyPlacement = function(e, i) {
                    var n = this.tip(),
                        o = n[0].offsetWidth,
                        s = n[0].offsetHeight,
                        r = parseInt(n.css("margin-top"), 10),
                        a = parseInt(n.css("margin-left"), 10);
                    isNaN(r) && (r = 0), isNaN(a) && (a = 0), e.top += r, e.left += a, t.offset.setOffset(n[0], t.extend({
                        using: function(t) {
                            n.css({
                                top: Math.round(t.top),
                                left: Math.round(t.left)
                            })
                        }
                    }, e), 0), n.addClass("in");
                    var l = n[0].offsetWidth,
                        c = n[0].offsetHeight;
                    "top" == i && c != s && (e.top = e.top + s - c);
                    var d = this.getViewportAdjustedDelta(i, e, l, c);
                    d.left ? e.left += d.left : e.top += d.top;
                    var u = /top|bottom/.test(i),
                        p = u ? 2 * d.left - o + l : 2 * d.top - s + c,
                        f = u ? "offsetWidth" : "offsetHeight";
                    n.offset(e), this.replaceArrow(p, n[0][f], u)
                }, i.prototype.replaceArrow = function(t, e, i) {
                    this.arrow().css(i ? "left" : "top", 50 * (1 - t / e) + "%").css(i ? "top" : "left", "")
                }, i.prototype.setContent = function() {
                    var t = this.tip(),
                        e = this.getTitle();
                    t.find(".tooltip-inner")[this.options.html ? "html" : "text"](e), t.removeClass("fade in top bottom left right")
                }, i.prototype.hide = function(e) {
                    function n() {
                        "in" != o.hoverState && s.detach(), o.$element && o.$element.removeAttr("aria-describedby").trigger("hidden.bs." + o.type), e && e()
                    }
                    var o = this,
                        s = t(this.$tip),
                        r = t.Event("hide.bs." + this.type);
                    if (this.$element.trigger(r), !r.isDefaultPrevented()) return s.removeClass("in"), t.support.transition && s.hasClass("fade") ? s.one("bsTransitionEnd", n).emulateTransitionEnd(i.TRANSITION_DURATION) : n(), this.hoverState = null, this
                }, i.prototype.fixTitle = function() {
                    var t = this.$element;
                    (t.attr("title") || "string" != typeof t.attr("data-original-title")) && t.attr("data-original-title", t.attr("title") || "").attr("title", "")
                }, i.prototype.hasContent = function() {
                    return this.getTitle()
                }, i.prototype.getPosition = function(e) {
                    e = e || this.$element;
                    var i = e[0],
                        n = "BODY" == i.tagName,
                        o = i.getBoundingClientRect();
                    null == o.width && (o = t.extend({}, o, {
                        width: o.right - o.left,
                        height: o.bottom - o.top
                    }));
                    var s = window.SVGElement && i instanceof window.SVGElement,
                        r = n ? {
                            top: 0,
                            left: 0
                        } : s ? null : e.offset(),
                        a = {
                            scroll: n ? document.documentElement.scrollTop || document.body.scrollTop : e.scrollTop()
                        },
                        l = n ? {
                            width: t(window).width(),
                            height: t(window).height()
                        } : null;
                    return t.extend({}, o, a, l, r)
                }, i.prototype.getCalculatedOffset = function(t, e, i, n) {
                    return "bottom" == t ? {
                        top: e.top + e.height,
                        left: e.left + e.width / 2 - i / 2
                    } : "top" == t ? {
                        top: e.top - n,
                        left: e.left + e.width / 2 - i / 2
                    } : "left" == t ? {
                        top: e.top + e.height / 2 - n / 2,
                        left: e.left - i
                    } : {
                        top: e.top + e.height / 2 - n / 2,
                        left: e.left + e.width
                    }
                }, i.prototype.getViewportAdjustedDelta = function(t, e, i, n) {
                    var o = {
                        top: 0,
                        left: 0
                    };
                    if (!this.$viewport) return o;
                    var s = this.options.viewport && this.options.viewport.padding || 0,
                        r = this.getPosition(this.$viewport);
                    if (/right|left/.test(t)) {
                        var a = e.top - s - r.scroll,
                            l = e.top + s - r.scroll + n;
                        a < r.top ? o.top = r.top - a : l > r.top + r.height && (o.top = r.top + r.height - l)
                    } else {
                        var c = e.left - s,
                            d = e.left + s + i;
                        c < r.left ? o.left = r.left - c : d > r.right && (o.left = r.left + r.width - d)
                    }
                    return o
                }, i.prototype.getTitle = function() {
                    var t = this.$element,
                        e = this.options;
                    return t.attr("data-original-title") || ("function" == typeof e.title ? e.title.call(t[0]) : e.title)
                }, i.prototype.getUID = function(t) {
                    do {
                        t += ~~(1e6 * Math.random())
                    } while (document.getElementById(t));
                    return t
                }, i.prototype.tip = function() {
                    if (!this.$tip && (this.$tip = t(this.options.template), 1 != this.$tip.length)) throw new Error(this.type + " `template` option must consist of exactly 1 top-level element!");
                    return this.$tip
                }, i.prototype.arrow = function() {
                    return this.$arrow = this.$arrow || this.tip().find(".tooltip-arrow")
                }, i.prototype.enable = function() {
                    this.enabled = !0
                }, i.prototype.disable = function() {
                    this.enabled = !1
                }, i.prototype.toggleEnabled = function() {
                    this.enabled = !this.enabled
                }, i.prototype.toggle = function(e) {
                    var i = this;
                    e && ((i = t(e.currentTarget).data("bs." + this.type)) || (i = new this.constructor(e.currentTarget, this.getDelegateOptions()), t(e.currentTarget).data("bs." + this.type, i))), e ? (i.inState.click = !i.inState.click, i.isInStateTrue() ? i.enter(i) : i.leave(i)) : i.tip().hasClass("in") ? i.leave(i) : i.enter(i)
                }, i.prototype.destroy = function() {
                    var t = this;
                    clearTimeout(this.timeout), this.hide((function() {
                        t.$element.off("." + t.type).removeData("bs." + t.type), t.$tip && t.$tip.detach(), t.$tip = null, t.$arrow = null, t.$viewport = null, t.$element = null
                    }))
                };
                var n = t.fn.tooltip;
                t.fn.tooltip = e, t.fn.tooltip.Constructor = i, t.fn.tooltip.noConflict = function() {
                    return t.fn.tooltip = n, this
                }
            })(t), (function(t) {
                "use strict";

                function e(e) {
                    return this.each((function() {
                        var n = t(this),
                            o = n.data("bs.popover"),
                            s = "object" == typeof e && e;
                        !o && /destroy|hide/.test(e) || (o || n.data("bs.popover", o = new i(this, s)), "string" == typeof e && o[e]())
                    }))
                }
                var i = function(t, e) {
                    this.init("popover", t, e)
                };
                if (!t.fn.tooltip) throw new Error("Popover requires tooltip.js");
                i.VERSION = "3.3.7", i.DEFAULTS = t.extend({}, t.fn.tooltip.Constructor.DEFAULTS, {
                    placement: "right",
                    trigger: "click",
                    content: "",
                    template: '<div class="popover" role="tooltip"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content"></div></div>'
                }), i.prototype = t.extend({}, t.fn.tooltip.Constructor.prototype), i.prototype.constructor = i, i.prototype.getDefaults = function() {
                    return i.DEFAULTS
                }, i.prototype.setContent = function() {
                    var t = this.tip(),
                        e = this.getTitle(),
                        i = this.getContent();
                    t.find(".popover-title")[this.options.html ? "html" : "text"](e), t.find(".popover-content").children().detach().end()[this.options.html ? "string" == typeof i ? "html" : "append" : "text"](i), t.removeClass("fade top bottom left right in"), t.find(".popover-title").html() || t.find(".popover-title").hide()
                }, i.prototype.hasContent = function() {
                    return this.getTitle() || this.getContent()
                }, i.prototype.getContent = function() {
                    var t = this.$element,
                        e = this.options;
                    return t.attr("data-content") || ("function" == typeof e.content ? e.content.call(t[0]) : e.content)
                }, i.prototype.arrow = function() {
                    return this.$arrow = this.$arrow || this.tip().find(".arrow")
                };
                var n = t.fn.popover;
                t.fn.popover = e, t.fn.popover.Constructor = i, t.fn.popover.noConflict = function() {
                    return t.fn.popover = n, this
                }
            })(t), (function(t) {
                "use strict";

                function e(i, n) {
                    this.$body = t(document.body), this.$scrollElement = t(t(i).is(document.body) ? window : i), this.options = t.extend({}, e.DEFAULTS, n), this.selector = (this.options.target || "") + " .nav li > a", this.offsets = [], this.targets = [], this.activeTarget = null, this.scrollHeight = 0, this.$scrollElement.on("scroll.bs.scrollspy", t.proxy(this.process, this)), this.refresh(), this.process()
                }

                function i(i) {
                    return this.each((function() {
                        var n = t(this),
                            o = n.data("bs.scrollspy"),
                            s = "object" == typeof i && i;
                        o || n.data("bs.scrollspy", o = new e(this, s)), "string" == typeof i && o[i]()
                    }))
                }
                e.VERSION = "3.3.7", e.DEFAULTS = {
                    offset: 10
                }, e.prototype.getScrollHeight = function() {
                    return this.$scrollElement[0].scrollHeight || Math.max(this.$body[0].scrollHeight, document.documentElement.scrollHeight)
                }, e.prototype.refresh = function() {
                    var e = this,
                        i = "offset",
                        n = 0;
                    this.offsets = [], this.targets = [], this.scrollHeight = this.getScrollHeight(), t.isWindow(this.$scrollElement[0]) || (i = "position", n = this.$scrollElement.scrollTop()), this.$body.find(this.selector).map((function() {
                        var e = t(this),
                            o = e.data("target") || e.attr("href"),
                            s = /^#./.test(o) && t(o);
                        return s && s.length && s.is(":visible") && [
                            [s[i]().top + n, o]
                        ] || null
                    })).sort((function(t, e) {
                        return t[0] - e[0]
                    })).each((function() {
                        e.offsets.push(this[0]), e.targets.push(this[1])
                    }))
                }, e.prototype.process = function() {
                    var t, e = this.$scrollElement.scrollTop() + this.options.offset,
                        i = this.getScrollHeight(),
                        n = this.options.offset + i - this.$scrollElement.height(),
                        o = this.offsets,
                        s = this.targets,
                        r = this.activeTarget;
                    if (this.scrollHeight != i && this.refresh(), e >= n) return r != (t = s[s.length - 1]) && this.activate(t);
                    if (r && e < o[0]) return this.activeTarget = null, this.clear();
                    for (t = o.length; t--;) r != s[t] && e >= o[t] && (void 0 === o[t + 1] || e < o[t + 1]) && this.activate(s[t])
                }, e.prototype.activate = function(e) {
                    this.activeTarget = e, this.clear();
                    var i = this.selector + '[data-target="' + e + '"],' + this.selector + '[href="' + e + '"]',
                        n = t(i).parents("li").addClass("active");
                    n.parent(".dropdown-menu").length && (n = n.closest("li.dropdown").addClass("active")), n.trigger("activate.bs.scrollspy")
                }, e.prototype.clear = function() {
                    t(this.selector).parentsUntil(this.options.target, ".active").removeClass("active")
                };
                var n = t.fn.scrollspy;
                t.fn.scrollspy = i, t.fn.scrollspy.Constructor = e, t.fn.scrollspy.noConflict = function() {
                    return t.fn.scrollspy = n, this
                }, t(window).on("load.bs.scrollspy.data-api", (function() {
                    t('[data-spy="scroll"]').each((function() {
                        var e = t(this);
                        i.call(e, e.data())
                    }))
                }))
            })(t), (function(t) {
                "use strict";

                function e(e) {
                    return this.each((function() {
                        var n = t(this),
                            o = n.data("bs.tab");
                        o || n.data("bs.tab", o = new i(this)), "string" == typeof e && o[e]()
                    }))
                }
                var i = function(e) {
                    this.element = t(e)
                };
                i.VERSION = "3.3.7", i.TRANSITION_DURATION = 150, i.prototype.show = function() {
                    var e = this.element,
                        i = e.closest("ul:not(.dropdown-menu)"),
                        n = e.data("target");
                    if (n || (n = e.attr("href"), n = n && n.replace(/.*(?=#[^\s]*$)/, "")), !e.parent("li").hasClass("active")) {
                        var o = i.find(".active:last a"),
                            s = t.Event("hide.bs.tab", {
                                relatedTarget: e[0]
                            }),
                            r = t.Event("show.bs.tab", {
                                relatedTarget: o[0]
                            });
                        if (o.trigger(s), e.trigger(r), !r.isDefaultPrevented() && !s.isDefaultPrevented()) {
                            var a = t(n);
                            this.activate(e.closest("li"), i), this.activate(a, a.parent(), (function() {
                                o.trigger({
                                    type: "hidden.bs.tab",
                                    relatedTarget: e[0]
                                }), e.trigger({
                                    type: "shown.bs.tab",
                                    relatedTarget: o[0]
                                })
                            }))
                        }
                    }
                }, i.prototype.activate = function(e, n, o) {
                    function s() {
                        r.removeClass("active").find("> .dropdown-menu > .active").removeClass("active").end().find('[data-toggle="tab"]').attr("aria-expanded", !1), e.addClass("active").find('[data-toggle="tab"]').attr("aria-expanded", !0), a ? (e[0].offsetWidth, e.addClass("in")) : e.removeClass("fade"), e.parent(".dropdown-menu").length && e.closest("li.dropdown").addClass("active").end().find('[data-toggle="tab"]').attr("aria-expanded", !0), o && o()
                    }
                    var r = n.find("> .active"),
                        a = o && t.support.transition && (r.length && r.hasClass("fade") || !!n.find("> .fade").length);
                    r.length && a ? r.one("bsTransitionEnd", s).emulateTransitionEnd(i.TRANSITION_DURATION) : s(), r.removeClass("in")
                };
                var n = t.fn.tab;
                t.fn.tab = e, t.fn.tab.Constructor = i, t.fn.tab.noConflict = function() {
                    return t.fn.tab = n, this
                };
                var o = function(i) {
                    i.preventDefault(), e.call(t(this), "show")
                };
                t(document).on("click.bs.tab.data-api", '[data-toggle="tab"]', o).on("click.bs.tab.data-api", '[data-toggle="pill"]', o)
            })(t), (function(t) {
                "use strict";

                function e(e) {
                    return this.each((function() {
                        var n = t(this),
                            o = n.data("bs.affix"),
                            s = "object" == typeof e && e;
                        o || n.data("bs.affix", o = new i(this, s)), "string" == typeof e && o[e]()
                    }))
                }
                var i = function(e, n) {
                    this.options = t.extend({}, i.DEFAULTS, n), this.$target = t(this.options.target).on("scroll.bs.affix.data-api", t.proxy(this.checkPosition, this)).on("click.bs.affix.data-api", t.proxy(this.checkPositionWithEventLoop, this)), this.$element = t(e), this.affixed = null, this.unpin = null, this.pinnedOffset = null, this.checkPosition()
                };
                i.VERSION = "3.3.7", i.RESET = "affix affix-top affix-bottom", i.DEFAULTS = {
                    offset: 0,
                    target: window
                }, i.prototype.getState = function(t, e, i, n) {
                    var o = this.$target.scrollTop(),
                        s = this.$element.offset(),
                        r = this.$target.height();
                    if (null != i && "top" == this.affixed) return o < i && "top";
                    if ("bottom" == this.affixed) return null != i ? !(o + this.unpin <= s.top) && "bottom" : !(o + r <= t - n) && "bottom";
                    var a = null == this.affixed,
                        l = a ? o : s.top,
                        c = a ? r : e;
                    return null != i && o <= i ? "top" : null != n && l + c >= t - n && "bottom"
                }, i.prototype.getPinnedOffset = function() {
                    if (this.pinnedOffset) return this.pinnedOffset;
                    this.$element.removeClass(i.RESET).addClass("affix");
                    var t = this.$target.scrollTop(),
                        e = this.$element.offset();
                    return this.pinnedOffset = e.top - t
                }, i.prototype.checkPositionWithEventLoop = function() {
                    setTimeout(t.proxy(this.checkPosition, this), 1)
                }, i.prototype.checkPosition = function() {
                    if (this.$element.is(":visible")) {
                        var e = this.$element.height(),
                            n = this.options.offset,
                            o = n.top,
                            s = n.bottom,
                            r = Math.max(t(document).height(), t(document.body).height());
                        "object" != typeof n && (s = o = n), "function" == typeof o && (o = n.top(this.$element)), "function" == typeof s && (s = n.bottom(this.$element));
                        var a = this.getState(r, e, o, s);
                        if (this.affixed != a) {
                            null != this.unpin && this.$element.css("top", "");
                            var l = "affix" + (a ? "-" + a : ""),
                                c = t.Event(l + ".bs.affix");
                            if (this.$element.trigger(c), c.isDefaultPrevented()) return;
                            this.affixed = a, this.unpin = "bottom" == a ? this.getPinnedOffset() : null, this.$element.removeClass(i.RESET).addClass(l).trigger(l.replace("affix", "affixed") + ".bs.affix")
                        }
                        "bottom" == a && this.$element.offset({
                            top: r - e - s
                        })
                    }
                };
                var n = t.fn.affix;
                t.fn.affix = e, t.fn.affix.Constructor = i, t.fn.affix.noConflict = function() {
                    return t.fn.affix = n, this
                }, t(window).on("load", (function() {
                    t('[data-spy="affix"]').each((function() {
                        var i = t(this),
                            n = i.data();
                        n.offset = n.offset || {}, null != n.offsetBottom && (n.offset.bottom = n.offsetBottom), null != n.offsetTop && (n.offset.top = n.offsetTop), e.call(i, n)
                    }))
                }))
            })(t)
        }).call(e, i("7t+N"))
    },
    gqkz: function(t, e, i) {
        var n, o, s;
        (function(r) {
            "use strict";
            o = [i("7t+N")], n = r, void 0 !== (s = "function" == typeof n ? n.apply(e, o) : n) && (t.exports = s)
        })((function(t) {
            "use strict";
            var e = window.Slick || {};
            e = (function() {
                function e(e, n) {
                    var o, s = this;
                    s.defaults = {
                        accessibility: !0,
                        adaptiveHeight: !1,
                        appendArrows: t(e),
                        appendDots: t(e),
                        arrows: !0,
                        asNavFor: null,
                        prevArrow: '<button class="slick-prev" aria-label="Previous" type="button">Previous</button>',
                        nextArrow: '<button class="slick-next" aria-label="Next" type="button">Next</button>',
                        autoplay: !1,
                        autoplaySpeed: 3e3,
                        centerMode: !1,
                        centerPadding: "50px",
                        cssEase: "ease",
                        customPaging: function(e, i) {
                            return t('<button type="button" />').text(i + 1)
                        },
                        dots: !1,
                        dotsClass: "slick-dots",
                        draggable: !0,
                        easing: "linear",
                        edgeFriction: .35,
                        fade: !1,
                        focusOnSelect: !1,
                        focusOnChange: !1,
                        infinite: !0,
                        initialSlide: 0,
                        lazyLoad: "ondemand",
                        mobileFirst: !1,
                        pauseOnHover: !0,
                        pauseOnFocus: !0,
                        pauseOnDotsHover: !1,
                        respondTo: "window",
                        responsive: null,
                        rows: 1,
                        rtl: !1,
                        slide: "",
                        slidesPerRow: 1,
                        slidesToShow: 1,
                        slidesToScroll: 1,
                        speed: 500,
                        swipe: !0,
                        swipeToSlide: !1,
                        touchMove: !0,
                        touchThreshold: 5,
                        useCSS: !0,
                        useTransform: !0,
                        variableWidth: !1,
                        vertical: !1,
                        verticalSwiping: !1,
                        waitForAnimate: !0,
                        zIndex: 1e3
                    }, s.initials = {
                        animating: !1,
                        dragging: !1,
                        autoPlayTimer: null,
                        currentDirection: 0,
                        currentLeft: null,
                        currentSlide: 0,
                        direction: 1,
                        $dots: null,
                        listWidth: null,
                        listHeight: null,
                        loadIndex: 0,
                        $nextArrow: null,
                        $prevArrow: null,
                        scrolling: !1,
                        slideCount: null,
                        slideWidth: null,
                        $slideTrack: null,
                        $slides: null,
                        sliding: !1,
                        slideOffset: 0,
                        swipeLeft: null,
                        swiping: !1,
                        $list: null,
                        touchObject: {},
                        transformsEnabled: !1,
                        unslicked: !1
                    }, t.extend(s, s.initials), s.activeBreakpoint = null, s.animType = null, s.animProp = null, s.breakpoints = [], s.breakpointSettings = [], s.cssTransitions = !1, s.focussed = !1, s.interrupted = !1, s.hidden = "hidden", s.paused = !0, s.positionProp = null, s.respondTo = null, s.rowCount = 1, s.shouldClick = !0, s.$slider = t(e), s.$slidesCache = null, s.transformType = null, s.transitionType = null, s.visibilityChange = "visibilitychange", s.windowWidth = 0, s.windowTimer = null, o = t(e).data("slick") || {}, s.options = t.extend({}, s.defaults, n, o), s.currentSlide = s.options.initialSlide, s.originalSettings = s.options, void 0 !== document.mozHidden ? (s.hidden = "mozHidden", s.visibilityChange = "mozvisibilitychange") : void 0 !== document.webkitHidden && (s.hidden = "webkitHidden", s.visibilityChange = "webkitvisibilitychange"), s.autoPlay = t.proxy(s.autoPlay, s), s.autoPlayClear = t.proxy(s.autoPlayClear, s), s.autoPlayIterator = t.proxy(s.autoPlayIterator, s), s.changeSlide = t.proxy(s.changeSlide, s), s.clickHandler = t.proxy(s.clickHandler, s), s.selectHandler = t.proxy(s.selectHandler, s), s.setPosition = t.proxy(s.setPosition, s), s.swipeHandler = t.proxy(s.swipeHandler, s), s.dragHandler = t.proxy(s.dragHandler, s), s.keyHandler = t.proxy(s.keyHandler, s), s.instanceUid = i++, s.htmlExpr = /^(?:\s*(<[\w\W]+>)[^>]*)$/, s.registerBreakpoints(), s.init(!0)
                }
                var i = 0;
                return e
            })(), e.prototype.activateADA = function() {
                this.$slideTrack.find(".slick-active").attr({
                    "aria-hidden": "false"
                }).find("a, input, button, select").attr({
                    tabindex: "0"
                })
            }, e.prototype.addSlide = e.prototype.slickAdd = function(e, i, n) {
                var o = this;
                if ("boolean" == typeof i) n = i, i = null;
                else if (i < 0 || i >= o.slideCount) return !1;
                o.unload(), "number" == typeof i ? 0 === i && 0 === o.$slides.length ? t(e).appendTo(o.$slideTrack) : n ? t(e).insertBefore(o.$slides.eq(i)) : t(e).insertAfter(o.$slides.eq(i)) : !0 === n ? t(e).prependTo(o.$slideTrack) : t(e).appendTo(o.$slideTrack), o.$slides = o.$slideTrack.children(this.options.slide), o.$slideTrack.children(this.options.slide).detach(), o.$slideTrack.append(o.$slides), o.$slides.each((function(e, i) {
                    t(i).attr("data-slick-index", e)
                })), o.$slidesCache = o.$slides, o.reinit()
            }, e.prototype.animateHeight = function() {
                var t = this;
                if (1 === t.options.slidesToShow && !0 === t.options.adaptiveHeight && !1 === t.options.vertical) {
                    var e = t.$slides.eq(t.currentSlide).outerHeight(!0);
                    t.$list.animate({
                        height: e
                    }, t.options.speed)
                }
            }, e.prototype.animateSlide = function(e, i) {
                var n = {},
                    o = this;
                o.animateHeight(), !0 === o.options.rtl && !1 === o.options.vertical && (e = -e), !1 === o.transformsEnabled ? !1 === o.options.vertical ? o.$slideTrack.animate({
                    left: e
                }, o.options.speed, o.options.easing, i) : o.$slideTrack.animate({
                    top: e
                }, o.options.speed, o.options.easing, i) : !1 === o.cssTransitions ? (!0 === o.options.rtl && (o.currentLeft = -o.currentLeft), t({
                    animStart: o.currentLeft
                }).animate({
                    animStart: e
                }, {
                    duration: o.options.speed,
                    easing: o.options.easing,
                    step: function(t) {
                        t = Math.ceil(t), !1 === o.options.vertical ? (n[o.animType] = "translate(" + t + "px, 0px)", o.$slideTrack.css(n)) : (n[o.animType] = "translate(0px," + t + "px)", o.$slideTrack.css(n))
                    },
                    complete: function() {
                        i && i.call()
                    }
                })) : (o.applyTransition(), e = Math.ceil(e), !1 === o.options.vertical ? n[o.animType] = "translate3d(" + e + "px, 0px, 0px)" : n[o.animType] = "translate3d(0px," + e + "px, 0px)", o.$slideTrack.css(n), i && setTimeout((function() {
                    o.disableTransition(), i.call()
                }), o.options.speed))
            }, e.prototype.getNavTarget = function() {
                var e = this,
                    i = e.options.asNavFor;
                return i && null !== i && (i = t(i).not(e.$slider)), i
            }, e.prototype.asNavFor = function(e) {
                var i = this,
                    n = i.getNavTarget();
                null !== n && "object" == typeof n && n.each((function() {
                    var i = t(this).slick("getSlick");
                    i.unslicked || i.slideHandler(e, !0)
                }))
            }, e.prototype.applyTransition = function(t) {
                var e = this,
                    i = {};
                !1 === e.options.fade ? i[e.transitionType] = e.transformType + " " + e.options.speed + "ms " + e.options.cssEase : i[e.transitionType] = "opacity " + e.options.speed + "ms " + e.options.cssEase, !1 === e.options.fade ? e.$slideTrack.css(i) : e.$slides.eq(t).css(i)
            }, e.prototype.autoPlay = function() {
                var t = this;
                t.autoPlayClear(), t.slideCount > t.options.slidesToShow && (t.autoPlayTimer = setInterval(t.autoPlayIterator, t.options.autoplaySpeed))
            }, e.prototype.autoPlayClear = function() {
                var t = this;
                t.autoPlayTimer && clearInterval(t.autoPlayTimer)
            }, e.prototype.autoPlayIterator = function() {
                var t = this,
                    e = t.currentSlide + t.options.slidesToScroll;
                t.paused || t.interrupted || t.focussed || (!1 === t.options.infinite && (1 === t.direction && t.currentSlide + 1 === t.slideCount - 1 ? t.direction = 0 : 0 === t.direction && (e = t.currentSlide - t.options.slidesToScroll, t.currentSlide - 1 == 0 && (t.direction = 1))), t.slideHandler(e))
            }, e.prototype.buildArrows = function() {
                var e = this;
                !0 === e.options.arrows && (e.$prevArrow = t(e.options.prevArrow).addClass("slick-arrow"), e.$nextArrow = t(e.options.nextArrow).addClass("slick-arrow"), e.slideCount > e.options.slidesToShow ? (e.$prevArrow.removeClass("slick-hidden").removeAttr("aria-hidden tabindex"), e.$nextArrow.removeClass("slick-hidden").removeAttr("aria-hidden tabindex"), e.htmlExpr.test(e.options.prevArrow) && e.$prevArrow.prependTo(e.options.appendArrows), e.htmlExpr.test(e.options.nextArrow) && e.$nextArrow.appendTo(e.options.appendArrows), !0 !== e.options.infinite && e.$prevArrow.addClass("slick-disabled").attr("aria-disabled", "true")) : e.$prevArrow.add(e.$nextArrow).addClass("slick-hidden").attr({
                    "aria-disabled": "true",
                    tabindex: "-1"
                }))
            }, e.prototype.buildDots = function() {
                var e, i, n = this;
                if (!0 === n.options.dots && n.slideCount > n.options.slidesToShow) {
                    for (n.$slider.addClass("slick-dotted"), i = t("<ul />").addClass(n.options.dotsClass), e = 0; e <= n.getDotCount(); e += 1) i.append(t("<li />").append(n.options.customPaging.call(this, n, e)));
                    n.$dots = i.appendTo(n.options.appendDots), n.$dots.find("li").first().addClass("slick-active")
                }
            }, e.prototype.buildOut = function() {
                var e = this;
                e.$slides = e.$slider.children(e.options.slide + ":not(.slick-cloned)").addClass("slick-slide"), e.slideCount = e.$slides.length, e.$slides.each((function(e, i) {
                    t(i).attr("data-slick-index", e).data("originalStyling", t(i).attr("style") || "")
                })), e.$slider.addClass("slick-slider"), e.$slideTrack = 0 === e.slideCount ? t('<div class="slick-track"/>').appendTo(e.$slider) : e.$slides.wrapAll('<div class="slick-track"/>').parent(), e.$list = e.$slideTrack.wrap('<div class="slick-list"/>').parent(), e.$slideTrack.css("opacity", 0), !0 !== e.options.centerMode && !0 !== e.options.swipeToSlide || (e.options.slidesToScroll = 1), t("img[data-lazy]", e.$slider).not("[src]").addClass("slick-loading"), e.setupInfinite(), e.buildArrows(), e.buildDots(), e.updateDots(), e.setSlideClasses("number" == typeof e.currentSlide ? e.currentSlide : 0), !0 === e.options.draggable && e.$list.addClass("draggable")
            }, e.prototype.buildRows = function() {
                var t, e, i, n, o, s, r, a = this;
                if (n = document.createDocumentFragment(), s = a.$slider.children(), a.options.rows > 0) {
                    for (r = a.options.slidesPerRow * a.options.rows, o = Math.ceil(s.length / r), t = 0; t < o; t++) {
                        var l = document.createElement("div");
                        for (e = 0; e < a.options.rows; e++) {
                            var c = document.createElement("div");
                            for (i = 0; i < a.options.slidesPerRow; i++) {
                                var d = t * r + (e * a.options.slidesPerRow + i);
                                s.get(d) && c.appendChild(s.get(d))
                            }
                            l.appendChild(c)
                        }
                        n.appendChild(l)
                    }
                    a.$slider.empty().append(n), a.$slider.children().children().children().css({
                        width: 100 / a.options.slidesPerRow + "%",
                        display: "inline-block"
                    })
                }
            }, e.prototype.checkResponsive = function(e, i) {
                var n, o, s, r = this,
                    a = !1,
                    l = r.$slider.width(),
                    c = window.innerWidth || t(window).width();
                if ("window" === r.respondTo ? s = c : "slider" === r.respondTo ? s = l : "min" === r.respondTo && (s = Math.min(c, l)), r.options.responsive && r.options.responsive.length && null !== r.options.responsive) {
                    o = null;
                    for (n in r.breakpoints) r.breakpoints.hasOwnProperty(n) && (!1 === r.originalSettings.mobileFirst ? s < r.breakpoints[n] && (o = r.breakpoints[n]) : s > r.breakpoints[n] && (o = r.breakpoints[n]));
                    null !== o ? null !== r.activeBreakpoint ? (o !== r.activeBreakpoint || i) && (r.activeBreakpoint = o, "unslick" === r.breakpointSettings[o] ? r.unslick(o) : (r.options = t.extend({}, r.originalSettings, r.breakpointSettings[o]), !0 === e && (r.currentSlide = r.options.initialSlide), r.refresh(e)), a = o) : (r.activeBreakpoint = o, "unslick" === r.breakpointSettings[o] ? r.unslick(o) : (r.options = t.extend({}, r.originalSettings, r.breakpointSettings[o]), !0 === e && (r.currentSlide = r.options.initialSlide), r.refresh(e)), a = o) : null !== r.activeBreakpoint && (r.activeBreakpoint = null, r.options = r.originalSettings, !0 === e && (r.currentSlide = r.options.initialSlide), r.refresh(e), a = o), e || !1 === a || r.$slider.trigger("breakpoint", [r, a])
                }
            }, e.prototype.changeSlide = function(e, i) {
                var n, o, s, r = this,
                    a = t(e.currentTarget);
                switch (a.is("a") && e.preventDefault(), a.is("li") || (a = a.closest("li")), s = r.slideCount % r.options.slidesToScroll != 0, n = s ? 0 : (r.slideCount - r.currentSlide) % r.options.slidesToScroll, e.data.message) {
                    case "previous":
                        o = 0 === n ? r.options.slidesToScroll : r.options.slidesToShow - n, r.slideCount > r.options.slidesToShow && r.slideHandler(r.currentSlide - o, !1, i);
                        break;
                    case "next":
                        o = 0 === n ? r.options.slidesToScroll : n, r.slideCount > r.options.slidesToShow && r.slideHandler(r.currentSlide + o, !1, i);
                        break;
                    case "index":
                        var l = 0 === e.data.index ? 0 : e.data.index || a.index() * r.options.slidesToScroll;
                        r.slideHandler(r.checkNavigable(l), !1, i), a.children().trigger("focus");
                        break;
                    default:
                        return
                }
            }, e.prototype.checkNavigable = function(t) {
                var e, i, n = this;
                if (e = n.getNavigableIndexes(), i = 0, t > e[e.length - 1]) t = e[e.length - 1];
                else
                    for (var o in e) {
                        if (t < e[o]) {
                            t = i;
                            break
                        }
                        i = e[o]
                    }
                return t
            }, e.prototype.cleanUpEvents = function() {
                var e = this;
                e.options.dots && null !== e.$dots && (t("li", e.$dots).off("click.slick", e.changeSlide).off("mouseenter.slick", t.proxy(e.interrupt, e, !0)).off("mouseleave.slick", t.proxy(e.interrupt, e, !1)), !0 === e.options.accessibility && e.$dots.off("keydown.slick", e.keyHandler)), e.$slider.off("focus.slick blur.slick"), !0 === e.options.arrows && e.slideCount > e.options.slidesToShow && (e.$prevArrow && e.$prevArrow.off("click.slick", e.changeSlide), e.$nextArrow && e.$nextArrow.off("click.slick", e.changeSlide), !0 === e.options.accessibility && (e.$prevArrow && e.$prevArrow.off("keydown.slick", e.keyHandler), e.$nextArrow && e.$nextArrow.off("keydown.slick", e.keyHandler))), e.$list.off("touchstart.slick mousedown.slick", e.swipeHandler), e.$list.off("touchmove.slick mousemove.slick", e.swipeHandler), e.$list.off("touchend.slick mouseup.slick", e.swipeHandler), e.$list.off("touchcancel.slick mouseleave.slick", e.swipeHandler), e.$list.off("click.slick", e.clickHandler), t(document).off(e.visibilityChange, e.visibility), e.cleanUpSlideEvents(), !0 === e.options.accessibility && e.$list.off("keydown.slick", e.keyHandler), !0 === e.options.focusOnSelect && t(e.$slideTrack).children().off("click.slick", e.selectHandler), t(window).off("orientationchange.slick.slick-" + e.instanceUid, e.orientationChange), t(window).off("resize.slick.slick-" + e.instanceUid, e.resize), t("[draggable!=true]", e.$slideTrack).off("dragstart", e.preventDefault), t(window).off("load.slick.slick-" + e.instanceUid, e.setPosition)
            }, e.prototype.cleanUpSlideEvents = function() {
                var e = this;
                e.$list.off("mouseenter.slick", t.proxy(e.interrupt, e, !0)), e.$list.off("mouseleave.slick", t.proxy(e.interrupt, e, !1))
            }, e.prototype.cleanUpRows = function() {
                var t, e = this;
                e.options.rows > 0 && (t = e.$slides.children().children(), t.removeAttr("style"), e.$slider.empty().append(t))
            }, e.prototype.clickHandler = function(t) {
                !1 === this.shouldClick && (t.stopImmediatePropagation(), t.stopPropagation(), t.preventDefault())
            }, e.prototype.destroy = function(e) {
                var i = this;
                i.autoPlayClear(), i.touchObject = {}, i.cleanUpEvents(), t(".slick-cloned", i.$slider).detach(), i.$dots && i.$dots.remove(), i.$prevArrow && i.$prevArrow.length && (i.$prevArrow.removeClass("slick-disabled slick-arrow slick-hidden").removeAttr("aria-hidden aria-disabled tabindex").css("display", ""), i.htmlExpr.test(i.options.prevArrow) && i.$prevArrow.remove()), i.$nextArrow && i.$nextArrow.length && (i.$nextArrow.removeClass("slick-disabled slick-arrow slick-hidden").removeAttr("aria-hidden aria-disabled tabindex").css("display", ""), i.htmlExpr.test(i.options.nextArrow) && i.$nextArrow.remove()), i.$slides && (i.$slides.removeClass("slick-slide slick-active slick-center slick-visible slick-current").removeAttr("aria-hidden").removeAttr("data-slick-index").each((function() {
                    t(this).attr("style", t(this).data("originalStyling"))
                })), i.$slideTrack.children(this.options.slide).detach(), i.$slideTrack.detach(), i.$list.detach(), i.$slider.append(i.$slides)), i.cleanUpRows(), i.$slider.removeClass("slick-slider"), i.$slider.removeClass("slick-initialized"), i.$slider.removeClass("slick-dotted"), i.unslicked = !0, e || i.$slider.trigger("destroy", [i])
            }, e.prototype.disableTransition = function(t) {
                var e = this,
                    i = {};
                i[e.transitionType] = "", !1 === e.options.fade ? e.$slideTrack.css(i) : e.$slides.eq(t).css(i)
            }, e.prototype.fadeSlide = function(t, e) {
                var i = this;
                !1 === i.cssTransitions ? (i.$slides.eq(t).css({
                    zIndex: i.options.zIndex
                }), i.$slides.eq(t).animate({
                    opacity: 1
                }, i.options.speed, i.options.easing, e)) : (i.applyTransition(t), i.$slides.eq(t).css({
                    opacity: 1,
                    zIndex: i.options.zIndex
                }), e && setTimeout((function() {
                    i.disableTransition(t), e.call()
                }), i.options.speed))
            }, e.prototype.fadeSlideOut = function(t) {
                var e = this;
                !1 === e.cssTransitions ? e.$slides.eq(t).animate({
                    opacity: 0,
                    zIndex: e.options.zIndex - 2
                }, e.options.speed, e.options.easing) : (e.applyTransition(t), e.$slides.eq(t).css({
                    opacity: 0,
                    zIndex: e.options.zIndex - 2
                }))
            }, e.prototype.filterSlides = e.prototype.slickFilter = function(t) {
                var e = this;
                null !== t && (e.$slidesCache = e.$slides, e.unload(), e.$slideTrack.children(this.options.slide).detach(), e.$slidesCache.filter(t).appendTo(e.$slideTrack), e.reinit())
            }, e.prototype.focusHandler = function() {
                var e = this;
                e.$slider.off("focus.slick blur.slick").on("focus.slick blur.slick", "*", (function(i) {
                    i.stopImmediatePropagation();
                    var n = t(this);
                    setTimeout((function() {
                        e.options.pauseOnFocus && (e.focussed = n.is(":focus"), e.autoPlay())
                    }), 0)
                }))
            }, e.prototype.getCurrent = e.prototype.slickCurrentSlide = function() {
                return this.currentSlide
            }, e.prototype.getDotCount = function() {
                var t = this,
                    e = 0,
                    i = 0,
                    n = 0;
                if (!0 === t.options.infinite)
                    if (t.slideCount <= t.options.slidesToShow) ++n;
                    else
                        for (; e < t.slideCount;) ++n, e = i + t.options.slidesToScroll, i += t.options.slidesToScroll <= t.options.slidesToShow ? t.options.slidesToScroll : t.options.slidesToShow;
                else if (!0 === t.options.centerMode) n = t.slideCount;
                else if (t.options.asNavFor)
                    for (; e < t.slideCount;) ++n, e = i + t.options.slidesToScroll, i += t.options.slidesToScroll <= t.options.slidesToShow ? t.options.slidesToScroll : t.options.slidesToShow;
                else n = 1 + Math.ceil((t.slideCount - t.options.slidesToShow) / t.options.slidesToScroll);
                return n - 1
            }, e.prototype.getLeft = function(t) {
                var e, i, n, o, s = this,
                    r = 0;
                return s.slideOffset = 0, i = s.$slides.first().outerHeight(!0), !0 === s.options.infinite ? (s.slideCount > s.options.slidesToShow && (s.slideOffset = s.slideWidth * s.options.slidesToShow * -1, o = -1, !0 === s.options.vertical && !0 === s.options.centerMode && (2 === s.options.slidesToShow ? o = -1.5 : 1 === s.options.slidesToShow && (o = -2)), r = i * s.options.slidesToShow * o), s.slideCount % s.options.slidesToScroll != 0 && t + s.options.slidesToScroll > s.slideCount && s.slideCount > s.options.slidesToShow && (t > s.slideCount ? (s.slideOffset = (s.options.slidesToShow - (t - s.slideCount)) * s.slideWidth * -1, r = (s.options.slidesToShow - (t - s.slideCount)) * i * -1) : (s.slideOffset = s.slideCount % s.options.slidesToScroll * s.slideWidth * -1, r = s.slideCount % s.options.slidesToScroll * i * -1))) : t + s.options.slidesToShow > s.slideCount && (s.slideOffset = (t + s.options.slidesToShow - s.slideCount) * s.slideWidth, r = (t + s.options.slidesToShow - s.slideCount) * i), s.slideCount <= s.options.slidesToShow && (s.slideOffset = 0, r = 0), !0 === s.options.centerMode && s.slideCount <= s.options.slidesToShow ? s.slideOffset = s.slideWidth * Math.floor(s.options.slidesToShow) / 2 - s.slideWidth * s.slideCount / 2 : !0 === s.options.centerMode && !0 === s.options.infinite ? s.slideOffset += s.slideWidth * Math.floor(s.options.slidesToShow / 2) - s.slideWidth : !0 === s.options.centerMode && (s.slideOffset = 0, s.slideOffset += s.slideWidth * Math.floor(s.options.slidesToShow / 2)), e = !1 === s.options.vertical ? t * s.slideWidth * -1 + s.slideOffset : t * i * -1 + r, !0 === s.options.variableWidth && (n = s.slideCount <= s.options.slidesToShow || !1 === s.options.infinite ? s.$slideTrack.children(".slick-slide").eq(t) : s.$slideTrack.children(".slick-slide").eq(t + s.options.slidesToShow), e = !0 === s.options.rtl ? n[0] ? -1 * (s.$slideTrack.width() - n[0].offsetLeft - n.width()) : 0 : n[0] ? -1 * n[0].offsetLeft : 0, !0 === s.options.centerMode && (n = s.slideCount <= s.options.slidesToShow || !1 === s.options.infinite ? s.$slideTrack.children(".slick-slide").eq(t) : s.$slideTrack.children(".slick-slide").eq(t + s.options.slidesToShow + 1), e = !0 === s.options.rtl ? n[0] ? -1 * (s.$slideTrack.width() - n[0].offsetLeft - n.width()) : 0 : n[0] ? -1 * n[0].offsetLeft : 0, e += (s.$list.width() - n.outerWidth()) / 2)), e
            }, e.prototype.getOption = e.prototype.slickGetOption = function(t) {
                return this.options[t]
            }, e.prototype.getNavigableIndexes = function() {
                var t, e = this,
                    i = 0,
                    n = 0,
                    o = [];
                for (!1 === e.options.infinite ? t = e.slideCount : (i = -1 * e.options.slidesToScroll, n = -1 * e.options.slidesToScroll, t = 2 * e.slideCount); i < t;) o.push(i), i = n + e.options.slidesToScroll, n += e.options.slidesToScroll <= e.options.slidesToShow ? e.options.slidesToScroll : e.options.slidesToShow;
                return o
            }, e.prototype.getSlick = function() {
                return this
            }, e.prototype.getSlideCount = function() {
                var e, i, n = this;
                return i = !0 === n.options.centerMode ? n.slideWidth * Math.floor(n.options.slidesToShow / 2) : 0, !0 === n.options.swipeToSlide ? (n.$slideTrack.find(".slick-slide").each((function(o, s) {
                    if (s.offsetLeft - i + t(s).outerWidth() / 2 > -1 * n.swipeLeft) return e = s, !1
                })), Math.abs(t(e).attr("data-slick-index") - n.currentSlide) || 1) : n.options.slidesToScroll
            }, e.prototype.goTo = e.prototype.slickGoTo = function(t, e) {
                this.changeSlide({
                    data: {
                        message: "index",
                        index: parseInt(t)
                    }
                }, e)
            }, e.prototype.init = function(e) {
                var i = this;
                t(i.$slider).hasClass("slick-initialized") || (t(i.$slider).addClass("slick-initialized"), i.buildRows(), i.buildOut(), i.setProps(), i.startLoad(), i.loadSlider(), i.initializeEvents(), i.updateArrows(), i.updateDots(), i.checkResponsive(!0), i.focusHandler()), e && i.$slider.trigger("init", [i]), !0 === i.options.accessibility && i.initADA(), i.options.autoplay && (i.paused = !1, i.autoPlay())
            }, e.prototype.initADA = function() {
                var e = this,
                    i = Math.ceil(e.slideCount / e.options.slidesToShow),
                    n = e.getNavigableIndexes().filter((function(t) {
                        return t >= 0 && t < e.slideCount
                    }));
                e.$slides.add(e.$slideTrack.find(".slick-cloned")).attr({
                    "aria-hidden": "true",
                    tabindex: "-1"
                }).find("a, input, button, select").attr({
                    tabindex: "-1"
                }), null !== e.$dots && (e.$slides.not(e.$slideTrack.find(".slick-cloned")).each((function(i) {
                    var o = n.indexOf(i);
                    if (t(this).attr({
                            role: "tabpanel",
                            id: "slick-slide" + e.instanceUid + i,
                            tabindex: -1
                        }), -1 !== o) {
                        var s = "slick-slide-control" + e.instanceUid + o;
                        t("#" + s).length && t(this).attr({
                            "aria-describedby": s
                        })
                    }
                })), e.$dots.attr("role", "tablist").find("li").each((function(o) {
                    var s = n[o];
                    t(this).attr({
                        role: "presentation"
                    }), t(this).find("button").first().attr({
                        role: "tab",
                        id: "slick-slide-control" + e.instanceUid + o,
                        "aria-controls": "slick-slide" + e.instanceUid + s,
                        "aria-label": o + 1 + " of " + i,
                        "aria-selected": null,
                        tabindex: "-1"
                    })
                })).eq(e.currentSlide).find("button").attr({
                    "aria-selected": "true",
                    tabindex: "0"
                }).end());
                for (var o = e.currentSlide, s = o + e.options.slidesToShow; o < s; o++) e.options.focusOnChange ? e.$slides.eq(o).attr({
                    tabindex: "0"
                }) : e.$slides.eq(o).removeAttr("tabindex");
                e.activateADA()
            }, e.prototype.initArrowEvents = function() {
                var t = this;
                !0 === t.options.arrows && t.slideCount > t.options.slidesToShow && (t.$prevArrow.off("click.slick").on("click.slick", {
                    message: "previous"
                }, t.changeSlide), t.$nextArrow.off("click.slick").on("click.slick", {
                    message: "next"
                }, t.changeSlide), !0 === t.options.accessibility && (t.$prevArrow.on("keydown.slick", t.keyHandler), t.$nextArrow.on("keydown.slick", t.keyHandler)))
            }, e.prototype.initDotEvents = function() {
                var e = this;
                !0 === e.options.dots && e.slideCount > e.options.slidesToShow && (t("li", e.$dots).on("click.slick", {
                    message: "index"
                }, e.changeSlide), !0 === e.options.accessibility && e.$dots.on("keydown.slick", e.keyHandler)), !0 === e.options.dots && !0 === e.options.pauseOnDotsHover && e.slideCount > e.options.slidesToShow && t("li", e.$dots).on("mouseenter.slick", t.proxy(e.interrupt, e, !0)).on("mouseleave.slick", t.proxy(e.interrupt, e, !1))
            }, e.prototype.initSlideEvents = function() {
                var e = this;
                e.options.pauseOnHover && (e.$list.on("mouseenter.slick", t.proxy(e.interrupt, e, !0)), e.$list.on("mouseleave.slick", t.proxy(e.interrupt, e, !1)))
            }, e.prototype.initializeEvents = function() {
                var e = this;
                e.initArrowEvents(), e.initDotEvents(), e.initSlideEvents(), e.$list.on("touchstart.slick mousedown.slick", {
                    action: "start"
                }, e.swipeHandler), e.$list.on("touchmove.slick mousemove.slick", {
                    action: "move"
                }, e.swipeHandler), e.$list.on("touchend.slick mouseup.slick", {
                    action: "end"
                }, e.swipeHandler), e.$list.on("touchcancel.slick mouseleave.slick", {
                    action: "end"
                }, e.swipeHandler), e.$list.on("click.slick", e.clickHandler), t(document).on(e.visibilityChange, t.proxy(e.visibility, e)), !0 === e.options.accessibility && e.$list.on("keydown.slick", e.keyHandler), !0 === e.options.focusOnSelect && t(e.$slideTrack).children().on("click.slick", e.selectHandler), t(window).on("orientationchange.slick.slick-" + e.instanceUid, t.proxy(e.orientationChange, e)), t(window).on("resize.slick.slick-" + e.instanceUid, t.proxy(e.resize, e)), t("[draggable!=true]", e.$slideTrack).on("dragstart", e.preventDefault), t(window).on("load.slick.slick-" + e.instanceUid, e.setPosition), t(e.setPosition)
            }, e.prototype.initUI = function() {
                var t = this;
                !0 === t.options.arrows && t.slideCount > t.options.slidesToShow && (t.$prevArrow.show(), t.$nextArrow.show()), !0 === t.options.dots && t.slideCount > t.options.slidesToShow && t.$dots.show()
            }, e.prototype.keyHandler = function(t) {
                var e = this;
                t.target.tagName.match("TEXTAREA|INPUT|SELECT") || (37 === t.keyCode && !0 === e.options.accessibility ? e.changeSlide({
                    data: {
                        message: !0 === e.options.rtl ? "next" : "previous"
                    }
                }) : 39 === t.keyCode && !0 === e.options.accessibility && e.changeSlide({
                    data: {
                        message: !0 === e.options.rtl ? "previous" : "next"
                    }
                }))
            }, e.prototype.lazyLoad = function() {
                function e(e) {
                    t("img[data-lazy]", e).each((function() {
                        var e = t(this),
                            i = t(this).attr("data-lazy"),
                            n = t(this).attr("data-srcset"),
                            o = t(this).attr("data-sizes") || r.$slider.attr("data-sizes"),
                            s = document.createElement("img");
                        s.onload = function() {
                            e.animate({
                                opacity: 0
                            }, 100, (function() {
                                n && (e.attr("srcset", n), o && e.attr("sizes", o)), e.attr("src", i).animate({
                                    opacity: 1
                                }, 200, (function() {
                                    e.removeAttr("data-lazy data-srcset data-sizes").removeClass("slick-loading")
                                })), r.$slider.trigger("lazyLoaded", [r, e, i])
                            }))
                        }, s.onerror = function() {
                            e.removeAttr("data-lazy").removeClass("slick-loading").addClass("slick-lazyload-error"), r.$slider.trigger("lazyLoadError", [r, e, i])
                        }, s.src = i
                    }))
                }
                var i, n, o, s, r = this;
                if (!0 === r.options.centerMode ? !0 === r.options.infinite ? (o = r.currentSlide + (r.options.slidesToShow / 2 + 1), s = o + r.options.slidesToShow + 2) : (o = Math.max(0, r.currentSlide - (r.options.slidesToShow / 2 + 1)), s = r.options.slidesToShow / 2 + 1 + 2 + r.currentSlide) : (o = r.options.infinite ? r.options.slidesToShow + r.currentSlide : r.currentSlide, s = Math.ceil(o + r.options.slidesToShow), !0 === r.options.fade && (o > 0 && o--, s <= r.slideCount && s++)), i = r.$slider.find(".slick-slide").slice(o, s), "anticipated" === r.options.lazyLoad)
                    for (var a = o - 1, l = s, c = r.$slider.find(".slick-slide"), d = 0; d < r.options.slidesToScroll; d++) a < 0 && (a = r.slideCount - 1), i = i.add(c.eq(a)), i = i.add(c.eq(l)), a--, l++;
                e(i), r.slideCount <= r.options.slidesToShow ? (n = r.$slider.find(".slick-slide"), e(n)) : r.currentSlide >= r.slideCount - r.options.slidesToShow ? (n = r.$slider.find(".slick-cloned").slice(0, r.options.slidesToShow), e(n)) : 0 === r.currentSlide && (n = r.$slider.find(".slick-cloned").slice(-1 * r.options.slidesToShow), e(n))
            }, e.prototype.loadSlider = function() {
                var t = this;
                t.setPosition(), t.$slideTrack.css({
                    opacity: 1
                }), t.$slider.removeClass("slick-loading"), t.initUI(), "progressive" === t.options.lazyLoad && t.progressiveLazyLoad()
            }, e.prototype.next = e.prototype.slickNext = function() {
                this.changeSlide({
                    data: {
                        message: "next"
                    }
                })
            }, e.prototype.orientationChange = function() {
                var t = this;
                t.checkResponsive(), t.setPosition()
            }, e.prototype.pause = e.prototype.slickPause = function() {
                var t = this;
                t.autoPlayClear(), t.paused = !0
            }, e.prototype.play = e.prototype.slickPlay = function() {
                var t = this;
                t.autoPlay(), t.options.autoplay = !0, t.paused = !1, t.focussed = !1, t.interrupted = !1
            }, e.prototype.postSlide = function(e) {
                var i = this;
                if (!i.unslicked && (i.$slider.trigger("afterChange", [i, e]), i.animating = !1, i.slideCount > i.options.slidesToShow && i.setPosition(), i.swipeLeft = null, i.options.autoplay && i.autoPlay(), !0 === i.options.accessibility && (i.initADA(), i.options.focusOnChange))) {
                    t(i.$slides.get(i.currentSlide)).attr("tabindex", 0).focus()
                }
            }, e.prototype.prev = e.prototype.slickPrev = function() {
                this.changeSlide({
                    data: {
                        message: "previous"
                    }
                })
            }, e.prototype.preventDefault = function(t) {
                t.preventDefault()
            }, e.prototype.progressiveLazyLoad = function(e) {
                e = e || 1;
                var i, n, o, s, r, a = this,
                    l = t("img[data-lazy]", a.$slider);
                l.length ? (i = l.first(), n = i.attr("data-lazy"), o = i.attr("data-srcset"), s = i.attr("data-sizes") || a.$slider.attr("data-sizes"), r = document.createElement("img"), r.onload = function() {
                    o && (i.attr("srcset", o), s && i.attr("sizes", s)), i.attr("src", n).removeAttr("data-lazy data-srcset data-sizes").removeClass("slick-loading"), !0 === a.options.adaptiveHeight && a.setPosition(), a.$slider.trigger("lazyLoaded", [a, i, n]), a.progressiveLazyLoad()
                }, r.onerror = function() {
                    e < 3 ? setTimeout((function() {
                        a.progressiveLazyLoad(e + 1)
                    }), 500) : (i.removeAttr("data-lazy").removeClass("slick-loading").addClass("slick-lazyload-error"), a.$slider.trigger("lazyLoadError", [a, i, n]), a.progressiveLazyLoad())
                }, r.src = n) : a.$slider.trigger("allImagesLoaded", [a])
            }, e.prototype.refresh = function(e) {
                var i, n, o = this;
                n = o.slideCount - o.options.slidesToShow, !o.options.infinite && o.currentSlide > n && (o.currentSlide = n), o.slideCount <= o.options.slidesToShow && (o.currentSlide = 0), i = o.currentSlide, o.destroy(!0), t.extend(o, o.initials, {
                    currentSlide: i
                }), o.init(), e || o.changeSlide({
                    data: {
                        message: "index",
                        index: i
                    }
                }, !1)
            }, e.prototype.registerBreakpoints = function() {
                var e, i, n, o = this,
                    s = o.options.responsive || null;
                if ("array" === t.type(s) && s.length) {
                    o.respondTo = o.options.respondTo || "window";
                    for (e in s)
                        if (n = o.breakpoints.length - 1, s.hasOwnProperty(e)) {
                            for (i = s[e].breakpoint; n >= 0;) o.breakpoints[n] && o.breakpoints[n] === i && o.breakpoints.splice(n, 1), n--;
                            o.breakpoints.push(i), o.breakpointSettings[i] = s[e].settings
                        } o.breakpoints.sort((function(t, e) {
                        return o.options.mobileFirst ? t - e : e - t
                    }))
                }
            }, e.prototype.reinit = function() {
                var e = this;
                e.$slides = e.$slideTrack.children(e.options.slide).addClass("slick-slide"), e.slideCount = e.$slides.length, e.currentSlide >= e.slideCount && 0 !== e.currentSlide && (e.currentSlide = e.currentSlide - e.options.slidesToScroll), e.slideCount <= e.options.slidesToShow && (e.currentSlide = 0), e.registerBreakpoints(), e.setProps(), e.setupInfinite(), e.buildArrows(), e.updateArrows(), e.initArrowEvents(), e.buildDots(), e.updateDots(), e.initDotEvents(), e.cleanUpSlideEvents(), e.initSlideEvents(), e.checkResponsive(!1, !0), !0 === e.options.focusOnSelect && t(e.$slideTrack).children().on("click.slick", e.selectHandler), e.setSlideClasses("number" == typeof e.currentSlide ? e.currentSlide : 0), e.setPosition(), e.focusHandler(), e.paused = !e.options.autoplay, e.autoPlay(), e.$slider.trigger("reInit", [e])
            }, e.prototype.resize = function() {
                var e = this;
                t(window).width() !== e.windowWidth && (clearTimeout(e.windowDelay), e.windowDelay = window.setTimeout((function() {
                    e.windowWidth = t(window).width(), e.checkResponsive(), e.unslicked || e.setPosition()
                }), 50))
            }, e.prototype.removeSlide = e.prototype.slickRemove = function(t, e, i) {
                var n = this;
                if ("boolean" == typeof t ? (e = t, t = !0 === e ? 0 : n.slideCount - 1) : t = !0 === e ? --t : t, n.slideCount < 1 || t < 0 || t > n.slideCount - 1) return !1;
                n.unload(), !0 === i ? n.$slideTrack.children().remove() : n.$slideTrack.children(this.options.slide).eq(t).remove(), n.$slides = n.$slideTrack.children(this.options.slide), n.$slideTrack.children(this.options.slide).detach(), n.$slideTrack.append(n.$slides), n.$slidesCache = n.$slides, n.reinit()
            }, e.prototype.setCSS = function(t) {
                var e, i, n = this,
                    o = {};
                !0 === n.options.rtl && (t = -t), e = "left" == n.positionProp ? Math.ceil(t) + "px" : "0px", i = "top" == n.positionProp ? Math.ceil(t) + "px" : "0px", o[n.positionProp] = t, !1 === n.transformsEnabled ? n.$slideTrack.css(o) : (o = {}, !1 === n.cssTransitions ? (o[n.animType] = "translate(" + e + ", " + i + ")", n.$slideTrack.css(o)) : (o[n.animType] = "translate3d(" + e + ", " + i + ", 0px)", n.$slideTrack.css(o)))
            }, e.prototype.setDimensions = function() {
                var t = this;
                !1 === t.options.vertical ? !0 === t.options.centerMode && t.$list.css({
                    padding: "0px " + t.options.centerPadding
                }) : (t.$list.height(t.$slides.first().outerHeight(!0) * t.options.slidesToShow), !0 === t.options.centerMode && t.$list.css({
                    padding: t.options.centerPadding + " 0px"
                })), t.listWidth = t.$list.width(), t.listHeight = t.$list.height(), !1 === t.options.vertical && !1 === t.options.variableWidth ? (t.slideWidth = Math.ceil(t.listWidth / t.options.slidesToShow), t.$slideTrack.width(Math.ceil(t.slideWidth * t.$slideTrack.children(".slick-slide").length))) : !0 === t.options.variableWidth ? t.$slideTrack.width(5e3 * t.slideCount) : (t.slideWidth = Math.ceil(t.listWidth), t.$slideTrack.height(Math.ceil(t.$slides.first().outerHeight(!0) * t.$slideTrack.children(".slick-slide").length)));
                var e = t.$slides.first().outerWidth(!0) - t.$slides.first().width();
                !1 === t.options.variableWidth && t.$slideTrack.children(".slick-slide").width(t.slideWidth - e)
            }, e.prototype.setFade = function() {
                var e, i = this;
                i.$slides.each((function(n, o) {
                    e = i.slideWidth * n * -1, !0 === i.options.rtl ? t(o).css({
                        position: "relative",
                        right: e,
                        top: 0,
                        zIndex: i.options.zIndex - 2,
                        opacity: 0
                    }) : t(o).css({
                        position: "relative",
                        left: e,
                        top: 0,
                        zIndex: i.options.zIndex - 2,
                        opacity: 0
                    })
                })), i.$slides.eq(i.currentSlide).css({
                    zIndex: i.options.zIndex - 1,
                    opacity: 1
                })
            }, e.prototype.setHeight = function() {
                var t = this;
                if (1 === t.options.slidesToShow && !0 === t.options.adaptiveHeight && !1 === t.options.vertical) {
                    var e = t.$slides.eq(t.currentSlide).outerHeight(!0);
                    t.$list.css("height", e)
                }
            }, e.prototype.setOption = e.prototype.slickSetOption = function() {
                var e, i, n, o, s, r = this,
                    a = !1;
                if ("object" === t.type(arguments[0]) ? (n = arguments[0], a = arguments[1], s = "multiple") : "string" === t.type(arguments[0]) && (n = arguments[0], o = arguments[1], a = arguments[2], "responsive" === arguments[0] && "array" === t.type(arguments[1]) ? s = "responsive" : void 0 !== arguments[1] && (s = "single")), "single" === s) r.options[n] = o;
                else if ("multiple" === s) t.each(n, (function(t, e) {
                    r.options[t] = e
                }));
                else if ("responsive" === s)
                    for (i in o)
                        if ("array" !== t.type(r.options.responsive)) r.options.responsive = [o[i]];
                        else {
                            for (e = r.options.responsive.length - 1; e >= 0;) r.options.responsive[e].breakpoint === o[i].breakpoint && r.options.responsive.splice(e, 1), e--;
                            r.options.responsive.push(o[i])
                        } a && (r.unload(), r.reinit())
            }, e.prototype.setPosition = function() {
                var t = this;
                t.setDimensions(), t.setHeight(), !1 === t.options.fade ? t.setCSS(t.getLeft(t.currentSlide)) : t.setFade(), t.$slider.trigger("setPosition", [t])
            }, e.prototype.setProps = function() {
                var t = this,
                    e = document.body.style;
                t.positionProp = !0 === t.options.vertical ? "top" : "left", "top" === t.positionProp ? t.$slider.addClass("slick-vertical") : t.$slider.removeClass("slick-vertical"), void 0 === e.WebkitTransition && void 0 === e.MozTransition && void 0 === e.msTransition || !0 === t.options.useCSS && (t.cssTransitions = !0), t.options.fade && ("number" == typeof t.options.zIndex ? t.options.zIndex < 3 && (t.options.zIndex = 3) : t.options.zIndex = t.defaults.zIndex), void 0 !== e.OTransform && (t.animType = "OTransform", t.transformType = "-o-transform", t.transitionType = "OTransition", void 0 === e.perspectiveProperty && void 0 === e.webkitPerspective && (t.animType = !1)), void 0 !== e.MozTransform && (t.animType = "MozTransform", t.transformType = "-moz-transform", t.transitionType = "MozTransition", void 0 === e.perspectiveProperty && void 0 === e.MozPerspective && (t.animType = !1)), void 0 !== e.webkitTransform && (t.animType = "webkitTransform", t.transformType = "-webkit-transform", t.transitionType = "webkitTransition", void 0 === e.perspectiveProperty && void 0 === e.webkitPerspective && (t.animType = !1)), void 0 !== e.msTransform && (t.animType = "msTransform", t.transformType = "-ms-transform", t.transitionType = "msTransition", void 0 === e.msTransform && (t.animType = !1)), void 0 !== e.transform && !1 !== t.animType && (t.animType = "transform", t.transformType = "transform", t.transitionType = "transition"), t.transformsEnabled = t.options.useTransform && null !== t.animType && !1 !== t.animType
            }, e.prototype.setSlideClasses = function(t) {
                var e, i, n, o, s = this;
                if (i = s.$slider.find(".slick-slide").removeClass("slick-active slick-center slick-current").attr("aria-hidden", "true"), s.$slides.eq(t).addClass("slick-current"), !0 === s.options.centerMode) {
                    var r = s.options.slidesToShow % 2 == 0 ? 1 : 0;
                    e = Math.floor(s.options.slidesToShow / 2), !0 === s.options.infinite && (t >= e && t <= s.slideCount - 1 - e ? s.$slides.slice(t - e + r, t + e + 1).addClass("slick-active").attr("aria-hidden", "false") : (n = s.options.slidesToShow + t, i.slice(n - e + 1 + r, n + e + 2).addClass("slick-active").attr("aria-hidden", "false")), 0 === t ? i.eq(i.length - 1 - s.options.slidesToShow).addClass("slick-center") : t === s.slideCount - 1 && i.eq(s.options.slidesToShow).addClass("slick-center")), s.$slides.eq(t).addClass("slick-center")
                } else t >= 0 && t <= s.slideCount - s.options.slidesToShow ? s.$slides.slice(t, t + s.options.slidesToShow).addClass("slick-active").attr("aria-hidden", "false") : i.length <= s.options.slidesToShow ? i.addClass("slick-active").attr("aria-hidden", "false") : (o = s.slideCount % s.options.slidesToShow, n = !0 === s.options.infinite ? s.options.slidesToShow + t : t, s.options.slidesToShow == s.options.slidesToScroll && s.slideCount - t < s.options.slidesToShow ? i.slice(n - (s.options.slidesToShow - o), n + o).addClass("slick-active").attr("aria-hidden", "false") : i.slice(n, n + s.options.slidesToShow).addClass("slick-active").attr("aria-hidden", "false"));
                "ondemand" !== s.options.lazyLoad && "anticipated" !== s.options.lazyLoad || s.lazyLoad()
            }, e.prototype.setupInfinite = function() {
                var e, i, n, o = this;
                if (!0 === o.options.fade && (o.options.centerMode = !1), !0 === o.options.infinite && !1 === o.options.fade && (i = null, o.slideCount > o.options.slidesToShow)) {
                    for (n = !0 === o.options.centerMode ? o.options.slidesToShow + 1 : o.options.slidesToShow, e = o.slideCount; e > o.slideCount - n; e -= 1) i = e - 1, t(o.$slides[i]).clone(!0).attr("id", "").attr("data-slick-index", i - o.slideCount).prependTo(o.$slideTrack).addClass("slick-cloned");
                    for (e = 0; e < n + o.slideCount; e += 1) i = e, t(o.$slides[i]).clone(!0).attr("id", "").attr("data-slick-index", i + o.slideCount).appendTo(o.$slideTrack).addClass("slick-cloned");
                    o.$slideTrack.find(".slick-cloned").find("[id]").each((function() {
                        t(this).attr("id", "")
                    }))
                }
            }, e.prototype.interrupt = function(t) {
                var e = this;
                t || e.autoPlay(), e.interrupted = t
            }, e.prototype.selectHandler = function(e) {
                var i = this,
                    n = t(e.target).is(".slick-slide") ? t(e.target) : t(e.target).parents(".slick-slide"),
                    o = parseInt(n.attr("data-slick-index"));
                if (o || (o = 0), i.slideCount <= i.options.slidesToShow) return void i.slideHandler(o, !1, !0);
                i.slideHandler(o)
            }, e.prototype.slideHandler = function(t, e, i) {
                var n, o, s, r, a, l = null,
                    c = this;
                if (e = e || !1, !(!0 === c.animating && !0 === c.options.waitForAnimate || !0 === c.options.fade && c.currentSlide === t)) {
                    if (!1 === e && c.asNavFor(t), n = t, l = c.getLeft(n), r = c.getLeft(c.currentSlide), c.currentLeft = null === c.swipeLeft ? r : c.swipeLeft, !1 === c.options.infinite && !1 === c.options.centerMode && (t < 0 || t > c.getDotCount() * c.options.slidesToScroll)) return void(!1 === c.options.fade && (n = c.currentSlide, !0 !== i && c.slideCount > c.options.slidesToShow ? c.animateSlide(r, (function() {
                        c.postSlide(n)
                    })) : c.postSlide(n)));
                    if (!1 === c.options.infinite && !0 === c.options.centerMode && (t < 0 || t > c.slideCount - c.options.slidesToScroll)) return void(!1 === c.options.fade && (n = c.currentSlide, !0 !== i && c.slideCount > c.options.slidesToShow ? c.animateSlide(r, (function() {
                        c.postSlide(n)
                    })) : c.postSlide(n)));
                    if (c.options.autoplay && clearInterval(c.autoPlayTimer), o = n < 0 ? c.slideCount % c.options.slidesToScroll != 0 ? c.slideCount - c.slideCount % c.options.slidesToScroll : c.slideCount + n : n >= c.slideCount ? c.slideCount % c.options.slidesToScroll != 0 ? 0 : n - c.slideCount : n, c.animating = !0, c.$slider.trigger("beforeChange", [c, c.currentSlide, o]), s = c.currentSlide, c.currentSlide = o, c.setSlideClasses(c.currentSlide), c.options.asNavFor && (a = c.getNavTarget(), a = a.slick("getSlick"), a.slideCount <= a.options.slidesToShow && a.setSlideClasses(c.currentSlide)), c.updateDots(), c.updateArrows(), !0 === c.options.fade) return !0 !== i ? (c.fadeSlideOut(s), c.fadeSlide(o, (function() {
                        c.postSlide(o)
                    }))) : c.postSlide(o), void c.animateHeight();
                    !0 !== i && c.slideCount > c.options.slidesToShow ? c.animateSlide(l, (function() {
                        c.postSlide(o)
                    })) : c.postSlide(o)
                }
            }, e.prototype.startLoad = function() {
                var t = this;
                !0 === t.options.arrows && t.slideCount > t.options.slidesToShow && (t.$prevArrow.hide(), t.$nextArrow.hide()), !0 === t.options.dots && t.slideCount > t.options.slidesToShow && t.$dots.hide(), t.$slider.addClass("slick-loading")
            }, e.prototype.swipeDirection = function() {
                var t, e, i, n, o = this;
                return t = o.touchObject.startX - o.touchObject.curX, e = o.touchObject.startY - o.touchObject.curY, i = Math.atan2(e, t), n = Math.round(180 * i / Math.PI), n < 0 && (n = 360 - Math.abs(n)), n <= 45 && n >= 0 ? !1 === o.options.rtl ? "left" : "right" : n <= 360 && n >= 315 ? !1 === o.options.rtl ? "left" : "right" : n >= 135 && n <= 225 ? !1 === o.options.rtl ? "right" : "left" : !0 === o.options.verticalSwiping ? n >= 35 && n <= 135 ? "down" : "up" : "vertical"
            }, e.prototype.swipeEnd = function(t) {
                var e, i, n = this;
                if (n.dragging = !1, n.swiping = !1, n.scrolling) return n.scrolling = !1, !1;
                if (n.interrupted = !1, n.shouldClick = !(n.touchObject.swipeLength > 10), void 0 === n.touchObject.curX) return !1;
                if (!0 === n.touchObject.edgeHit && n.$slider.trigger("edge", [n, n.swipeDirection()]), n.touchObject.swipeLength >= n.touchObject.minSwipe) {
                    switch (i = n.swipeDirection()) {
                        case "left":
                        case "down":
                            e = n.options.swipeToSlide ? n.checkNavigable(n.currentSlide + n.getSlideCount()) : n.currentSlide + n.getSlideCount(), n.currentDirection = 0;
                            break;
                        case "right":
                        case "up":
                            e = n.options.swipeToSlide ? n.checkNavigable(n.currentSlide - n.getSlideCount()) : n.currentSlide - n.getSlideCount(), n.currentDirection = 1
                    }
                    "vertical" != i && (n.slideHandler(e), n.touchObject = {}, n.$slider.trigger("swipe", [n, i]))
                } else n.touchObject.startX !== n.touchObject.curX && (n.slideHandler(n.currentSlide), n.touchObject = {})
            }, e.prototype.swipeHandler = function(t) {
                var e = this;
                if (!(!1 === e.options.swipe || "ontouchend" in document && !1 === e.options.swipe || !1 === e.options.draggable && -1 !== t.type.indexOf("mouse"))) switch (e.touchObject.fingerCount = t.originalEvent && void 0 !== t.originalEvent.touches ? t.originalEvent.touches.length : 1, e.touchObject.minSwipe = e.listWidth / e.options.touchThreshold, !0 === e.options.verticalSwiping && (e.touchObject.minSwipe = e.listHeight / e.options.touchThreshold), t.data.action) {
                    case "start":
                        e.swipeStart(t);
                        break;
                    case "move":
                        e.swipeMove(t);
                        break;
                    case "end":
                        e.swipeEnd(t)
                }
            }, e.prototype.swipeMove = function(t) {
                var e, i, n, o, s, r, a = this;
                return s = void 0 !== t.originalEvent ? t.originalEvent.touches : null, !(!a.dragging || a.scrolling || s && 1 !== s.length) && (e = a.getLeft(a.currentSlide), a.touchObject.curX = void 0 !== s ? s[0].pageX : t.clientX, a.touchObject.curY = void 0 !== s ? s[0].pageY : t.clientY, a.touchObject.swipeLength = Math.round(Math.sqrt(Math.pow(a.touchObject.curX - a.touchObject.startX, 2))), r = Math.round(Math.sqrt(Math.pow(a.touchObject.curY - a.touchObject.startY, 2))), !a.options.verticalSwiping && !a.swiping && r > 4 ? (a.scrolling = !0, !1) : (!0 === a.options.verticalSwiping && (a.touchObject.swipeLength = r), i = a.swipeDirection(), void 0 !== t.originalEvent && a.touchObject.swipeLength > 4 && (a.swiping = !0, t.preventDefault()), o = (!1 === a.options.rtl ? 1 : -1) * (a.touchObject.curX > a.touchObject.startX ? 1 : -1), !0 === a.options.verticalSwiping && (o = a.touchObject.curY > a.touchObject.startY ? 1 : -1), n = a.touchObject.swipeLength, a.touchObject.edgeHit = !1, !1 === a.options.infinite && (0 === a.currentSlide && "right" === i || a.currentSlide >= a.getDotCount() && "left" === i) && (n = a.touchObject.swipeLength * a.options.edgeFriction, a.touchObject.edgeHit = !0), !1 === a.options.vertical ? a.swipeLeft = e + n * o : a.swipeLeft = e + n * (a.$list.height() / a.listWidth) * o, !0 === a.options.verticalSwiping && (a.swipeLeft = e + n * o), !0 !== a.options.fade && !1 !== a.options.touchMove && (!0 === a.animating ? (a.swipeLeft = null, !1) : void a.setCSS(a.swipeLeft))))
            }, e.prototype.swipeStart = function(t) {
                var e, i = this;
                if (i.interrupted = !0, 1 !== i.touchObject.fingerCount || i.slideCount <= i.options.slidesToShow) return i.touchObject = {}, !1;
                void 0 !== t.originalEvent && void 0 !== t.originalEvent.touches && (e = t.originalEvent.touches[0]), i.touchObject.startX = i.touchObject.curX = void 0 !== e ? e.pageX : t.clientX, i.touchObject.startY = i.touchObject.curY = void 0 !== e ? e.pageY : t.clientY, i.dragging = !0
            }, e.prototype.unfilterSlides = e.prototype.slickUnfilter = function() {
                var t = this;
                null !== t.$slidesCache && (t.unload(), t.$slideTrack.children(this.options.slide).detach(), t.$slidesCache.appendTo(t.$slideTrack), t.reinit())
            }, e.prototype.unload = function() {
                var e = this;
                t(".slick-cloned", e.$slider).remove(), e.$dots && e.$dots.remove(), e.$prevArrow && e.htmlExpr.test(e.options.prevArrow) && e.$prevArrow.remove(), e.$nextArrow && e.htmlExpr.test(e.options.nextArrow) && e.$nextArrow.remove(), e.$slides.removeClass("slick-slide slick-active slick-visible slick-current").attr("aria-hidden", "true").css("width", "")
            }, e.prototype.unslick = function(t) {
                var e = this;
                e.$slider.trigger("unslick", [e, t]), e.destroy()
            }, e.prototype.updateArrows = function() {
                var t = this;
                Math.floor(t.options.slidesToShow / 2), !0 === t.options.arrows && t.slideCount > t.options.slidesToShow && !t.options.infinite && (t.$prevArrow.removeClass("slick-disabled").attr("aria-disabled", "false"), t.$nextArrow.removeClass("slick-disabled").attr("aria-disabled", "false"), 0 === t.currentSlide ? (t.$prevArrow.addClass("slick-disabled").attr("aria-disabled", "true"), t.$nextArrow.removeClass("slick-disabled").attr("aria-disabled", "false")) : t.currentSlide >= t.slideCount - t.options.slidesToShow && !1 === t.options.centerMode ? (t.$nextArrow.addClass("slick-disabled").attr("aria-disabled", "true"), t.$prevArrow.removeClass("slick-disabled").attr("aria-disabled", "false")) : t.currentSlide >= t.slideCount - 1 && !0 === t.options.centerMode && (t.$nextArrow.addClass("slick-disabled").attr("aria-disabled", "true"), t.$prevArrow.removeClass("slick-disabled").attr("aria-disabled", "false")))
            }, e.prototype.updateDots = function() {
                var t = this;
                null !== t.$dots && (t.$dots.find("li").removeClass("slick-active").end(), t.$dots.find("li").eq(Math.floor(t.currentSlide / t.options.slidesToScroll)).addClass("slick-active"))
            }, e.prototype.visibility = function() {
                var t = this;
                t.options.autoplay && (document[t.hidden] ? t.interrupted = !0 : t.interrupted = !1)
            }, t.fn.slick = function() {
                var t, i, n = this,
                    o = arguments[0],
                    s = Array.prototype.slice.call(arguments, 1),
                    r = n.length;
                for (t = 0; t < r; t++)
                    if ("object" == typeof o || void 0 === o ? n[t].slick = new e(n[t], o) : i = n[t].slick[o].apply(n[t].slick, s), void 0 !== i) return i;
                return n
            }
        }))
    },
    n77y: function(t, e, i) {
        "use strict";
        e.__esModule = !0, i("9kJc"), i("K3J8"), i("gqkz"), i("nonB"), i("/qmb")
    },
    nonB: function(t, e) {
        var i = "color: #02CF69;font-size: 60px;font-weight: bold;text-shadow: 1px 1px 5px rgb(200, 200, 200);filter: dropshadow(color=rgb(200, 200, 200), offx=1, offy=1);",
            n = "color: #8B64F1;font-size: 60px;font-weight: bold;text-shadow: 1px 1px 5px rgb(200, 200, 200);filter: dropshadow(color=rgb(200, 200, 200), offx=1, offy=1);",
            o = "color: #FE0052;font-size: 60px;font-weight: bold;text-shadow: 1px 1px 5px rgb(200, 200, 200);filter: dropshadow(color=rgb(200, 200, 200), offx=1, offy=1);",
            s = "color: #FFCC33;font-size: 60px;font-weight: bold;text-shadow: 1px 1px 5px rgb(200, 200, 200);filter: dropshadow(color=rgb(200, 200, 200), offx=1, offy=1);";
        
    }
});