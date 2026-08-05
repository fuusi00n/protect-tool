.class public final Lzc;
.super Lhn;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Ltk;

.field public static final c:Lzc;

.field public static final d:Lzc;

.field public static final e:Lzc;

.field public static final f:Lzc;

.field public static final g:Lzc;

.field public final synthetic b:I

.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lzc;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lzc;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lzc;->c:Lzc;

    .line 9
    .line 10
    new-instance v0, Lzc;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Lzc;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lzc;->d:Lzc;

    .line 17
    .line 18
    new-instance v0, Lzc;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {v0, v1, v2}, Lzc;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lzc;->e:Lzc;

    .line 25
    .line 26
    new-instance v0, Lzc;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {v0, v1, v2}, Lzc;-><init>(II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lzc;->f:Lzc;

    .line 33
    .line 34
    new-instance v0, Lzc;

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v2}, Lzc;-><init>(II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lzc;->g:Lzc;

    .line 41
    .line 42
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lzc;->b:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lhn;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lzc;->b:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lyc;

    .line 7
    .line 8
    check-cast p2, Lwc;

    .line 9
    .line 10
    invoke-interface {p1, p2}, Lyc;->j(Lyc;)Lyc;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    check-cast p1, Lv20;

    .line 16
    .line 17
    check-cast p2, Lwc;

    .line 18
    .line 19
    return-object p1

    .line 20
    :pswitch_1
    if-nez p1, :cond_0

    .line 21
    .line 22
    check-cast p2, Lwc;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lg9;->a()V

    .line 26
    .line 27
    .line 28
    :goto_0
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :pswitch_2
    check-cast p2, Lwc;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    check-cast p2, Lwc;

    .line 39
    .line 40
    return-object p1

    .line 41
    :pswitch_4
    check-cast p1, Lyc;

    .line 42
    .line 43
    check-cast p2, Lwc;

    .line 44
    .line 45
    invoke-interface {p1, p2}, Lyc;->j(Lyc;)Lyc;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
