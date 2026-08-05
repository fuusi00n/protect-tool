.class public final Lad;
.super Lhn;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Lpk;

.field public static final b:Lad;

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lad;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lhn;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lad;->b:Lad;

    .line 8
    .line 9
    return-void
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lwc;

    .line 2
    .line 3
    instance-of p0, p1, Lcd;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcd;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method
