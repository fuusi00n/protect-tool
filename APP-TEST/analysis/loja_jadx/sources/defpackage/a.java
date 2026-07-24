package defpackage;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class a extends v implements Map {
    public p h;

    /* JADX INFO: renamed from: a$a, reason: collision with other inner class name */
    public class C0000a extends p {
        public C0000a() {
        }

        @Override // defpackage.p
        public void a() {
            a.this.clear();
        }

        @Override // defpackage.p
        public Object b(int i, int i2) {
            return a.this.b[(i << 1) + i2];
        }

        @Override // defpackage.p
        public Map c() {
            return a.this;
        }

        @Override // defpackage.p
        public int d() {
            return a.this.c;
        }

        @Override // defpackage.p
        public int e(Object obj) {
            return a.this.f(obj);
        }

        @Override // defpackage.p
        public int f(Object obj) {
            return a.this.h(obj);
        }

        @Override // defpackage.p
        public void g(Object obj, Object obj2) {
            a.this.put(obj, obj2);
        }

        @Override // defpackage.p
        public void h(int i) {
            a.this.j(i);
        }

        @Override // defpackage.p
        public Object i(int i, Object obj) {
            return a.this.k(i, obj);
        }
    }

    @Override // java.util.Map
    public Set entrySet() {
        return m().l();
    }

    @Override // java.util.Map
    public Set keySet() {
        return m().m();
    }

    public final p m() {
        if (this.h == null) {
            this.h = new C0000a();
        }
        return this.h;
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        c(this.c + map.size());
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection values() {
        return m().n();
    }
}
