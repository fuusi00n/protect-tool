package defpackage;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.autofill.AutofillId;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class a0 {
    public static final AtomicInteger a = new AtomicInteger(1);
    public static WeakHashMap b = null;
    public static boolean c = false;
    public static final int[] d = {r.a, r.b, r.m, r.x, r.A, r.B, r.C, r.D, r.E, r.F, r.c, r.d, r.e, r.f, r.g, r.h, r.i, r.j, r.k, r.l, r.n, r.o, r.p, r.q, r.r, r.s, r.t, r.u, r.v, r.w, r.y, r.z};
    public static final q e = new q() { // from class: z
    };
    public static final b f = new b();

    public class a extends c {
        public a(int i, Class cls, int i2, int i3) {
            super(i, cls, i2, i3);
        }

        @Override // a0.c
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public CharSequence c(View view) {
            return f.b(view);
        }
    }

    public static class b implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {
        public final WeakHashMap a = new WeakHashMap();

        public final void a(View view, boolean z) {
            boolean z2 = view.isShown() && view.getWindowVisibility() == 0;
            if (z != z2) {
                a0.g(view, z2 ? 16 : 32);
                this.a.put(view, Boolean.valueOf(z2));
            }
        }

        public final void b(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                for (Map.Entry entry : this.a.entrySet()) {
                    a((View) entry.getKey(), ((Boolean) entry.getValue()).booleanValue());
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            b(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public static abstract class c {
        public final int a;
        public final Class b;
        public final int c;
        public final int d;

        public c(int i, Class cls, int i2, int i3) {
            this.a = i;
            this.b = cls;
            this.d = i2;
            this.c = i3;
        }

        public final boolean a() {
            return true;
        }

        public final boolean b() {
            return Build.VERSION.SDK_INT >= this.c;
        }

        public abstract Object c(View view);

        public Object d(View view) {
            if (b()) {
                return c(view);
            }
            if (!a()) {
                return null;
            }
            Object tag = view.getTag(this.a);
            if (this.b.isInstance(tag)) {
                return tag;
            }
            return null;
        }
    }

    public static class d {
        public static AccessibilityNodeProvider a(View view) {
            return view.getAccessibilityNodeProvider();
        }

        public static boolean b(View view) {
            return view.getFitsSystemWindows();
        }

        public static int c(View view) {
            return view.getImportantForAccessibility();
        }

        public static int d(View view) {
            return view.getMinimumHeight();
        }

        public static int e(View view) {
            return view.getMinimumWidth();
        }

        public static ViewParent f(View view) {
            return view.getParentForAccessibility();
        }

        public static int g(View view) {
            return view.getWindowSystemUiVisibility();
        }

        public static boolean h(View view) {
            return view.hasOverlappingRendering();
        }

        public static boolean i(View view) {
            return view.hasTransientState();
        }

        public static boolean j(View view, int i, Bundle bundle) {
            return view.performAccessibilityAction(i, bundle);
        }

        public static void k(View view) {
            view.postInvalidateOnAnimation();
        }

        public static void l(View view, int i, int i2, int i3, int i4) {
            view.postInvalidateOnAnimation(i, i2, i3, i4);
        }

        public static void m(View view, Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        public static void n(View view, Runnable runnable, long j) {
            view.postOnAnimationDelayed(runnable, j);
        }

        public static void o(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }

        public static void p(View view) {
            view.requestFitSystemWindows();
        }

        public static void q(View view, Drawable drawable) {
            view.setBackground(drawable);
        }

        public static void r(View view, boolean z) {
            view.setHasTransientState(z);
        }

        public static void s(View view, int i) {
            view.setImportantForAccessibility(i);
        }
    }

    public static class e {
        public static int a(View view) {
            return view.getAccessibilityLiveRegion();
        }

        public static boolean b(View view) {
            return view.isAttachedToWindow();
        }

        public static boolean c(View view) {
            return view.isLaidOut();
        }

        public static boolean d(View view) {
            return view.isLayoutDirectionResolved();
        }

        public static void e(ViewParent viewParent, View view, View view2, int i) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i);
        }

        public static void f(View view, int i) {
            view.setAccessibilityLiveRegion(i);
        }

        public static void g(AccessibilityEvent accessibilityEvent, int i) {
            accessibilityEvent.setContentChangeTypes(i);
        }
    }

    public static class f {
        public static void a(View view, final g gVar) {
            v vVar = (v) view.getTag(r.I);
            if (vVar == null) {
                vVar = new v();
                view.setTag(r.I, vVar);
            }
            Objects.requireNonNull(gVar);
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener = new View.OnUnhandledKeyEventListener(gVar) { // from class: b0
                @Override // android.view.View.OnUnhandledKeyEventListener
                public final boolean onUnhandledKeyEvent(View view2, KeyEvent keyEvent) {
                    throw null;
                }
            };
            vVar.put(gVar, onUnhandledKeyEventListener);
            view.addOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        public static CharSequence b(View view) {
            return view.getAccessibilityPaneTitle();
        }

        public static boolean c(View view) {
            return view.isAccessibilityHeading();
        }

        public static boolean d(View view) {
            return view.isScreenReaderFocusable();
        }

        public static void e(View view, g gVar) {
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
            v vVar = (v) view.getTag(r.I);
            if (vVar == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) vVar.get(gVar)) == null) {
                return;
            }
            view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        public static <T> T f(View view, int i) {
            return (T) view.requireViewById(i);
        }

        public static void g(View view, boolean z) {
            view.setAccessibilityHeading(z);
        }

        public static void h(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        public static void i(View view, AutofillId autofillId) {
            view.setAutofillId(autofillId);
        }

        public static void j(View view, boolean z) {
            view.setScreenReaderFocusable(z);
        }
    }

    public interface g {
    }

    public static class h {
        public static final ArrayList d = new ArrayList();
        public WeakHashMap a = null;
        public SparseArray b = null;
        public WeakReference c = null;

        public static h a(View view) {
            h hVar = (h) view.getTag(r.H);
            if (hVar != null) {
                return hVar;
            }
            h hVar2 = new h();
            view.setTag(r.H, hVar2);
            return hVar2;
        }

        public boolean b(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                g();
            }
            View viewC = c(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (viewC != null && !KeyEvent.isModifierKey(keyCode)) {
                    d().put(keyCode, new WeakReference(viewC));
                }
            }
            return viewC != null;
        }

        public final View c(View view, KeyEvent keyEvent) {
            WeakHashMap weakHashMap = this.a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View viewC = c(viewGroup.getChildAt(childCount), keyEvent);
                        if (viewC != null) {
                            return viewC;
                        }
                    }
                }
                if (e(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        public final SparseArray d() {
            if (this.b == null) {
                this.b = new SparseArray();
            }
            return this.b;
        }

        public final boolean e(View view, KeyEvent keyEvent) {
            int size;
            ArrayList arrayList = (ArrayList) view.getTag(r.I);
            if (arrayList == null || (size = arrayList.size() - 1) < 0) {
                return false;
            }
            c0.a(arrayList.get(size));
            throw null;
        }

        public boolean f(KeyEvent keyEvent) {
            WeakReference weakReference;
            int iIndexOfKey;
            WeakReference weakReference2 = this.c;
            if (weakReference2 != null && weakReference2.get() == keyEvent) {
                return false;
            }
            this.c = new WeakReference(keyEvent);
            SparseArray sparseArrayD = d();
            if (keyEvent.getAction() != 1 || (iIndexOfKey = sparseArrayD.indexOfKey(keyEvent.getKeyCode())) < 0) {
                weakReference = null;
            } else {
                weakReference = (WeakReference) sparseArrayD.valueAt(iIndexOfKey);
                sparseArrayD.removeAt(iIndexOfKey);
            }
            if (weakReference == null) {
                weakReference = (WeakReference) sparseArrayD.get(keyEvent.getKeyCode());
            }
            if (weakReference == null) {
                return false;
            }
            View view = (View) weakReference.get();
            if (view != null && a0.f(view)) {
                e(view, keyEvent);
            }
            return true;
        }

        public final void g() {
            WeakHashMap weakHashMap = this.a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList arrayList = d;
            if (arrayList.isEmpty()) {
                return;
            }
            synchronized (arrayList) {
                try {
                    if (this.a == null) {
                        this.a = new WeakHashMap();
                    }
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        ArrayList arrayList2 = d;
                        View view = (View) ((WeakReference) arrayList2.get(size)).get();
                        if (view == null) {
                            arrayList2.remove(size);
                        } else {
                            this.a.put(view, Boolean.TRUE);
                            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                                this.a.put((View) parent, Boolean.TRUE);
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static boolean a(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return h.a(view).b(view, keyEvent);
    }

    public static boolean b(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return h.a(view).f(keyEvent);
    }

    public static int c(View view) {
        return e.a(view);
    }

    public static CharSequence d(View view) {
        return (CharSequence) h().d(view);
    }

    public static int e(View view) {
        return d.c(view);
    }

    public static boolean f(View view) {
        return e.b(view);
    }

    public static void g(View view, int i) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z = d(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (c(view) != 0 || z) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z ? 32 : 2048);
                e.g(accessibilityEventObtain, i);
                if (z) {
                    accessibilityEventObtain.getText().add(d(view));
                    j(view);
                }
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                return;
            }
            if (i == 32) {
                AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain();
                view.onInitializeAccessibilityEvent(accessibilityEventObtain2);
                accessibilityEventObtain2.setEventType(32);
                e.g(accessibilityEventObtain2, i);
                accessibilityEventObtain2.setSource(view);
                view.onPopulateAccessibilityEvent(accessibilityEventObtain2);
                accessibilityEventObtain2.getText().add(d(view));
                accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain2);
                return;
            }
            if (view.getParent() != null) {
                try {
                    e.e(view.getParent(), view, view, i);
                } catch (AbstractMethodError e2) {
                    Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e2);
                }
            }
        }
    }

    public static c h() {
        return new a(r.G, CharSequence.class, 8, 28);
    }

    public static void i(View view, int i) {
        d.s(view, i);
    }

    public static void j(View view) {
        if (e(view) == 0) {
            i(view, 1);
        }
    }
}
