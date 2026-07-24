.class public final Lym;
.super Lxm;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public final h:Lbn;

.field public final i:Lzm;

.field public final j:Le9;

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbn;Lzm;Le9;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lep;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lym;->h:Lbn;

    .line 5
    .line 6
    iput-object p2, p0, Lym;->i:Lzm;

    .line 7
    .line 8
    iput-object p3, p0, Lym;->j:Le9;

    .line 9
    .line 10
    iput-object p4, p0, Lym;->k:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lym;->j:Le9;

    .line 2
    .line 3
    invoke-static {p1}, Lbn;->F(Lep;)Le9;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lym;->h:Lbn;

    .line 8
    .line 9
    iget-object v1, p0, Lym;->i:Lzm;

    .line 10
    .line 11
    iget-object p0, p0, Lym;->k:Ljava/lang/Object;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    :cond_0
    iget-object v2, p1, Le9;->h:Lbn;

    .line 16
    .line 17
    new-instance v3, Lym;

    .line 18
    .line 19
    invoke-direct {v3, v0, v1, p1, p0}, Lym;-><init>(Lbn;Lzm;Le9;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x1

    .line 24
    invoke-static {v2, v4, v3, v5}, Ld40;->v(Lsm;ZLxm;I)Lpf;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sget-object v3, Lws;->a:Lws;

    .line 29
    .line 30
    if-eq v2, v3, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-static {p1}, Lbn;->F(Lep;)Le9;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    :cond_2
    invoke-virtual {v0, v1, p0}, Lbn;->s(Lzm;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0, p0}, Lbn;->k(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
