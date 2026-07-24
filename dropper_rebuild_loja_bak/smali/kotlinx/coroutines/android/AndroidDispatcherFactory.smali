.class public final Lkotlinx/coroutines/android/AndroidDispatcherFactory;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lkotlinx/coroutines/internal/MainDispatcherFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createDispatcher(Ljava/util/List;)Lvp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/coroutines/internal/MainDispatcherFactory;",
            ">;)",
            "Lvp;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance p1, Lnl;

    .line 8
    .line 9
    invoke-static {p0}, Lol;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, v0}, Lnl;-><init>(Landroid/os/Handler;Z)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    const-string p0, "The main looper is not available"

    .line 19
    .line 20
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public getLoadPriority()I
    .locals 0

    .line 1
    const p0, 0x3fffffff    # 1.9999999f

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public hintOnError()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used"

    .line 2
    .line 3
    return-object p0
.end method
