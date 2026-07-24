.class public final Lbk;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lpl;
.implements Ldz;
.implements Lj60;


# instance fields
.field public final a:Laj;

.field public final b:Li60;

.field public c:Ltn;

.field public d:Lcz;


# direct methods
.method public constructor <init>(Laj;Li60;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lbk;->c:Ltn;

    .line 6
    .line 7
    iput-object v0, p0, Lbk;->d:Lcz;

    .line 8
    .line 9
    iput-object p1, p0, Lbk;->a:Laj;

    .line 10
    .line 11
    iput-object p2, p0, Lbk;->b:Li60;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Lls;
    .locals 5

    .line 1
    iget-object v0, p0, Lbk;->a:Laj;

    .line 2
    .line 3
    invoke-virtual {v0}, Laj;->A()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    instance-of v2, v1, Landroid/app/Application;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    check-cast v1, Landroid/app/Application;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_1
    new-instance v2, Lls;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v2, v3}, Lls;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iget-object v3, v2, Lnd;->a:Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    sget-object v4, Lnm;->p:Lg60;

    .line 41
    .line 42
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_2
    sget-object v1, Lvd;->A:Lqg;

    .line 46
    .line 47
    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    sget-object v1, Lvd;->B:Lqg;

    .line 51
    .line 52
    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object p0, v0, Laj;->f:Landroid/os/Bundle;

    .line 56
    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    sget-object v0, Lvd;->C:Lqg;

    .line 60
    .line 61
    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_3
    return-object v2
.end method

.method public final b()Lm3;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbk;->f()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lbk;->d:Lcz;

    .line 5
    .line 6
    iget-object p0, p0, Lcz;->b:Lm3;

    .line 7
    .line 8
    return-object p0
.end method

.method public final c(Lon;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lbk;->c:Ltn;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ltn;->d(Lon;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()Li60;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbk;->f()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lbk;->b:Li60;

    .line 5
    .line 6
    return-object p0
.end method

.method public final e()Ltn;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbk;->f()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lbk;->c:Ltn;

    .line 5
    .line 6
    return-object p0
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbk;->c:Ltn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ltn;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ltn;-><init>(Lrn;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lbk;->c:Ltn;

    .line 11
    .line 12
    new-instance v0, Lcz;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcz;-><init>(Ldz;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lbk;->d:Lcz;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcz;->a()V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lvd;->m(Ldz;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
