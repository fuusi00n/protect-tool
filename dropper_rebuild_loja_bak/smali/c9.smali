.class public final Lc9;
.super Lum;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public final h:Lf8;


# direct methods
.method public constructor <init>(Lf8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lep;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc9;->h:Lf8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lxm;->q()Lbn;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lbn;->t()Ljava/util/concurrent/CancellationException;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p0, p0, Lc9;->h:Lf8;

    .line 10
    .line 11
    invoke-virtual {p0}, Lf8;->u()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lf8;->d:Lmc;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    check-cast v0, Ljf;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljf;->m(Ljava/util/concurrent/CancellationException;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :goto_0
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p0, p1}, Lf8;->m(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lf8;->u()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lf8;->n()V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    return-void
.end method
