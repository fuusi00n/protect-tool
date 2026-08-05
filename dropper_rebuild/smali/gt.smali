.class public final Lgt;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public static final a:Lgt;

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgt;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgt;->a:Lgt;

    .line 7
    .line 8
    return-void
.end method

.method public final a(Lpk;Lpk;Lek;Lek;)Landroid/window/OnBackInvokedCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpk;",
            "Lpk;",
            "Lek;",
            "Lek;",
            ")",
            "Landroid/window/OnBackInvokedCallback;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p0, Lft;

    .line 14
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lft;-><init>(Lpk;Lpk;Lek;Lek;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method
