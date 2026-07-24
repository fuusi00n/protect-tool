package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;

/* JADX INFO: loaded from: classes.dex */
public class x extends w {
    public final SparseIntArray d;
    public final Parcel e;
    public final int f;
    public final int g;
    public final String h;
    public int i;
    public int j;
    public int k;

    public x(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new a(), new a(), new a());
    }

    @Override // defpackage.w
    public void A(byte[] bArr) {
        if (bArr == null) {
            this.e.writeInt(-1);
        } else {
            this.e.writeInt(bArr.length);
            this.e.writeByteArray(bArr);
        }
    }

    @Override // defpackage.w
    public void C(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.e, 0);
    }

    @Override // defpackage.w
    public void E(int i) {
        this.e.writeInt(i);
    }

    @Override // defpackage.w
    public void G(Parcelable parcelable) {
        this.e.writeParcelable(parcelable, 0);
    }

    @Override // defpackage.w
    public void I(String str) {
        this.e.writeString(str);
    }

    @Override // defpackage.w
    public void a() {
        int i = this.i;
        if (i >= 0) {
            int i2 = this.d.get(i);
            int iDataPosition = this.e.dataPosition();
            this.e.setDataPosition(i2);
            this.e.writeInt(iDataPosition - i2);
            this.e.setDataPosition(iDataPosition);
        }
    }

    @Override // defpackage.w
    public w b() {
        Parcel parcel = this.e;
        int iDataPosition = parcel.dataPosition();
        int i = this.j;
        if (i == this.f) {
            i = this.g;
        }
        return new x(parcel, iDataPosition, i, this.h + "  ", this.a, this.b, this.c);
    }

    @Override // defpackage.w
    public boolean g() {
        return this.e.readInt() != 0;
    }

    @Override // defpackage.w
    public byte[] i() {
        int i = this.e.readInt();
        if (i < 0) {
            return null;
        }
        byte[] bArr = new byte[i];
        this.e.readByteArray(bArr);
        return bArr;
    }

    @Override // defpackage.w
    public CharSequence k() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.e);
    }

    @Override // defpackage.w
    public boolean m(int i) {
        while (this.j < this.g) {
            int i2 = this.k;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            this.e.setDataPosition(this.j);
            int i3 = this.e.readInt();
            this.k = this.e.readInt();
            this.j += i3;
        }
        return this.k == i;
    }

    @Override // defpackage.w
    public int o() {
        return this.e.readInt();
    }

    @Override // defpackage.w
    public Parcelable q() {
        return this.e.readParcelable(getClass().getClassLoader());
    }

    @Override // defpackage.w
    public String s() {
        return this.e.readString();
    }

    @Override // defpackage.w
    public void w(int i) {
        a();
        this.i = i;
        this.d.put(i, this.e.dataPosition());
        E(0);
        E(i);
    }

    @Override // defpackage.w
    public void y(boolean z) {
        this.e.writeInt(z ? 1 : 0);
    }

    public x(Parcel parcel, int i, int i2, String str, a aVar, a aVar2, a aVar3) {
        super(aVar, aVar2, aVar3);
        this.d = new SparseIntArray();
        this.i = -1;
        this.k = -1;
        this.e = parcel;
        this.f = i;
        this.g = i2;
        this.j = i;
        this.h = str;
    }
}
