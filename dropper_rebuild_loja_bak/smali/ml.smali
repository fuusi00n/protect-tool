.class public final Lml;
.super Lhn;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lpk;


# instance fields
.field public final synthetic b:Lnl;

.field public final synthetic c:Lj1;


# direct methods
.method public constructor <init>(Lnl;Lj1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lml;->b:Lnl;

    .line 2
    .line 3
    iput-object p2, p0, Lml;->c:Lj1;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lhn;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Lml;->b:Lnl;

    .line 4
    .line 5
    iget-object p1, p1, Lnl;->c:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object p0, p0, Lml;->c:Lj1;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lqg;->j:Lqg;

    .line 13
    .line 14
    return-object p0
.end method
