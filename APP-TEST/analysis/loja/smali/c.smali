.class public final Lc;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lc;->a:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 71
    new-instance p0, Lk30;

    invoke-direct {p0, p1, v0}, Lk30;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 72
    :pswitch_0
    new-instance p0, Lk20;

    invoke-direct {p0, p1, v0}, Lk20;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 73
    :pswitch_1
    new-instance p0, Lf00;

    invoke-direct {p0, p1, v0}, Lf00;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 74
    :pswitch_2
    new-instance p0, Lex;

    invoke-direct {p0, p1, v0}, Lex;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 75
    :pswitch_3
    new-instance p0, Lgq;

    invoke-direct {p0, p1, v0}, Lgq;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 76
    :pswitch_4
    new-instance p0, Lsc;

    invoke-direct {p0, p1, v0}, Lsc;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 77
    :pswitch_5
    new-instance p0, Lb9;

    invoke-direct {p0, p1, v0}, Lb9;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 78
    :pswitch_6
    new-instance p0, Lu7;

    invoke-direct {p0, p1, v0}, Lu7;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 79
    :pswitch_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_0

    .line 80
    sget-object v0, Ld;->b:Lb;

    goto :goto_0

    .line 81
    :cond_0
    const-string p0, "superState must be null"

    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lc;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lk30;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lk30;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_0
    new-instance p0, Lk20;

    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Lk20;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_1
    new-instance p0, Lf00;

    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Lf00;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_2
    new-instance p0, Lex;

    .line 25
    .line 26
    invoke-direct {p0, p1, p2}, Lex;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_3
    new-instance p0, Lgq;

    .line 31
    .line 32
    invoke-direct {p0, p1, p2}, Lgq;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_4
    new-instance p0, Lsc;

    .line 37
    .line 38
    invoke-direct {p0, p1, p2}, Lsc;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_5
    new-instance p0, Lb9;

    .line 43
    .line 44
    invoke-direct {p0, p1, p2}, Lb9;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_6
    new-instance p0, Lu7;

    .line 49
    .line 50
    invoke-direct {p0, p1, p2}, Lu7;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-nez p0, :cond_0

    .line 59
    .line 60
    sget-object p0, Ld;->b:Lb;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-string p0, "superState must be null"

    .line 64
    .line 65
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    :goto_0
    return-object p0

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lc;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lk30;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lk20;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lf00;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lex;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Lgq;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lsc;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Lb9;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Lu7;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Ld;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
