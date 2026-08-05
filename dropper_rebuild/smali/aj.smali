.class public abstract Laj;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lrn;
.implements Lj60;
.implements Lpl;
.implements Ldz;

.field public static final S:Ljava/lang/Object;

.field public A:Z

.field public final B:Z

.field public C:Z

.field public D:Landroid/view/ViewGroup;

.field public E:Landroid/view/View;

.field public F:Z

.field public G:Z

.field public H:Lzi;

.field public I:Z

.field public J:Z

.field public K:Ljava/lang/String;

.field public L:Lpn;

.field public M:Ltn;

.field public N:Lbk;

.field public final O:Lms;

.field public P:Lcz;

.field public final Q:Ljava/util/ArrayList;

.field public final R:Lxi;

.field public a:I

.field public b:Landroid/os/Bundle;

.field public c:Landroid/util/SparseArray;

.field public d:Landroid/os/Bundle;

.field public e:Ljava/lang/String;

.field public f:Landroid/os/Bundle;

.field public g:Laj;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/Boolean;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:Lpj;

.field public s:Lcj;

.field public t:Lqj;

.field public u:Laj;

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Z

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Laj;->S:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Laj;->a:I

    .line 6
    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Laj;->e:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Laj;->h:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Laj;->j:Ljava/lang/Boolean;

    .line 21
    .line 22
    new-instance v0, Lqj;

    .line 23
    .line 24
    invoke-direct {v0}, Lpj;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Laj;->t:Lqj;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Laj;->B:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Laj;->G:Z

    .line 33
    .line 34
    sget-object v0, Lpn;->e:Lpn;

    .line 35
    .line 36
    iput-object v0, p0, Laj;->L:Lpn;

    .line 37
    .line 38
    new-instance v0, Lms;

    .line 39
    .line 40
    invoke-direct {v0}, Lms;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Laj;->O:Lms;

    .line 44
    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Laj;->Q:Ljava/util/ArrayList;

    .line 56
    .line 57
    new-instance v0, Lxi;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lxi;-><init>(Laj;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Laj;->R:Lxi;

    .line 63
    .line 64
    invoke-virtual {p0}, Laj;->k()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final A()Landroid/content/Context;
    .locals 2

    .line 1
    invoke-virtual {p0}, Laj;->h()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-string v0, "Fragment "

    .line 9
    .line 10
    const-string v1, " not attached to a context."

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Lg9;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public final B()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Laj;->E:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "Fragment "

    .line 7
    .line 8
    const-string v1, " did not return a View from onCreateView() or this was called before onCreateView()."

    .line 9
    .line 10
    invoke-static {v0, p0, v1}, Lg9;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public final C(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Laj;->H:Lzi;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    if-nez p4, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Laj;->f()Lzi;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput p1, v0, Lzi;->b:I

    .line 19
    .line 20
    invoke-virtual {p0}, Laj;->f()Lzi;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput p2, p1, Lzi;->c:I

    .line 25
    .line 26
    invoke-virtual {p0}, Laj;->f()Lzi;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput p3, p1, Lzi;->d:I

    .line 31
    .line 32
    invoke-virtual {p0}, Laj;->f()Lzi;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iput p4, p0, Lzi;->e:I

    .line 37
    .line 38
    return-void
.end method

.method public final D(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Laj;->r:Lpj;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, v0, Lpj;->E:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, v0, Lpj;->F:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "Fragment already added and state has been saved"

    .line 15
    .line 16
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    :goto_0
    iput-object p1, p0, Laj;->f:Landroid/os/Bundle;

    .line 21
    .line 22
    return-void
.end method

.method public final a()Lls;
    .locals 4

    .line 1
    invoke-virtual {p0}, Laj;->A()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Landroid/app/Application;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v0, Landroid/app/Application;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_1
    if-nez v0, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    invoke-static {v1}, Lpj;->E(I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Laj;->A()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    :cond_2
    new-instance v1, Lls;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-direct {v1, v2}, Lls;-><init>(I)V

    .line 52
    .line 53
    .line 54
    iget-object v2, v1, Lnd;->a:Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    sget-object v3, Lnm;->p:Lg60;

    .line 59
    .line 60
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_3
    sget-object v0, Lvd;->A:Lqg;

    .line 64
    .line 65
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    sget-object v0, Lvd;->B:Lqg;

    .line 69
    .line 70
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Laj;->f:Landroid/os/Bundle;

    .line 74
    .line 75
    if-eqz p0, :cond_4

    .line 76
    .line 77
    sget-object v0, Lvd;->C:Lqg;

    .line 78
    .line 79
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_4
    return-object v1
.end method

.method public final b()Lm3;
    .locals 0

    .line 1
    iget-object p0, p0, Laj;->P:Lcz;

    .line 2
    .line 3
    iget-object p0, p0, Lcz;->b:Lm3;

    .line 4
    .line 5
    return-object p0
.end method

.method public c()Lvd;
    .locals 1

    .line 1
    new-instance v0, Lyi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lyi;-><init>(Laj;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final d()Li60;
    .locals 3

    .line 1
    iget-object v0, p0, Laj;->r:Lpj;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Laj;->i()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v0, v2, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Laj;->r:Lpj;

    .line 14
    .line 15
    iget-object v0, v0, Lpj;->L:Ltj;

    .line 16
    .line 17
    iget-object v0, v0, Ltj;->d:Ljava/util/HashMap;

    .line 18
    .line 19
    iget-object v1, p0, Laj;->e:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Li60;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Li60;

    .line 30
    .line 31
    invoke-direct {v1}, Li60;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Laj;->e:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_0
    return-object v1

    .line 40
    :cond_1
    const-string p0, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    .line 41
    .line 42
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_2
    const-string p0, "Can\'t access ViewModels from detached fragment"

    .line 47
    .line 48
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v1
.end method

.method public final e()Ltn;
    .locals 0

    .line 1
    iget-object p0, p0, Laj;->M:Ltn;

    .line 2
    .line 3
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-eq p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 p0, 0x1

    .line 6
    return p0
.end method

.method public final f()Lzi;
    .locals 2

    .line 1
    iget-object v0, p0, Laj;->H:Lzi;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lzi;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Laj;->S:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v1, v0, Lzi;->g:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v1, v0, Lzi;->h:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object v1, v0, Lzi;->i:Ljava/lang/Object;

    .line 17
    .line 18
    const/high16 v1, 0x3f800000

    .line 19
    .line 20
    iput v1, v0, Lzi;->j:F

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Lzi;->k:Landroid/view/View;

    .line 24
    .line 25
    iput-object v0, p0, Laj;->H:Lzi;

    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Laj;->H:Lzi;

    .line 28
    .line 29
    return-object p0
.end method

.method public final g()Lpj;
    .locals 2

    .line 1
    iget-object v0, p0, Laj;->s:Lcj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Laj;->t:Lqj;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string v0, "Fragment "

    .line 9
    .line 10
    const-string v1, " has not been attached yet."

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Lg9;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public final h()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Laj;->s:Lcj;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcj;->F:Lf3;

    .line 8
    .line 9
    return-object p0
.end method

.method public final i()I
    .locals 2

    .line 1
    iget-object v0, p0, Laj;->L:Lpn;

    .line 2
    .line 3
    sget-object v1, Lpn;->b:Lpn;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Laj;->u:Laj;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object p0, p0, Laj;->u:Laj;

    .line 17
    .line 18
    invoke-virtual {p0}, Laj;->i()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final j()Lpj;
    .locals 2

    .line 1
    iget-object v0, p0, Laj;->r:Lpj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "Fragment "

    .line 7
    .line 8
    const-string v1, " not associated with a fragment manager."

    .line 9
    .line 10
    invoke-static {v0, p0, v1}, Lg9;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public final k()V
    .locals 3

    .line 1
    new-instance v0, Ltn;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ltn;-><init>(Lrn;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Laj;->M:Ltn;

    .line 7
    .line 8
    new-instance v0, Lcz;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcz;-><init>(Ldz;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Laj;->P:Lcz;

    .line 14
    .line 15
    iget-object v0, p0, Laj;->Q:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v1, p0, Laj;->R:Lxi;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    iget p0, p0, Laj;->a:I

    .line 26
    .line 27
    if-ltz p0, :cond_0

    .line 28
    .line 29
    iget-object p0, v1, Lxi;->a:Laj;

    .line 30
    .line 31
    iget-object v0, p0, Laj;->P:Lcz;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcz;->a()V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lvd;->m(Ldz;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Laj;->k()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Laj;->e:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Laj;->K:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Laj;->e:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Laj;->k:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Laj;->l:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Laj;->m:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Laj;->n:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Laj;->o:Z

    .line 28
    .line 29
    iput v0, p0, Laj;->q:I

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Laj;->r:Lpj;

    .line 33
    .line 34
    new-instance v2, Lqj;

    .line 35
    .line 36
    invoke-direct {v2}, Lpj;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Laj;->t:Lqj;

    .line 40
    .line 41
    iput-object v1, p0, Laj;->s:Lcj;

    .line 42
    .line 43
    iput v0, p0, Laj;->v:I

    .line 44
    .line 45
    iput v0, p0, Laj;->w:I

    .line 46
    .line 47
    iput-object v1, p0, Laj;->x:Ljava/lang/String;

    .line 48
    .line 49
    iput-boolean v0, p0, Laj;->y:Z

    .line 50
    .line 51
    iput-boolean v0, p0, Laj;->z:Z

    .line 52
    .line 53
    return-void
.end method

.method public final m()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Laj;->y:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Laj;->r:Lpj;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Laj;->u:Laj;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    move p0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Laj;->m()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    :goto_0
    if-eqz p0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    return v1

    .line 27
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 28
    return p0
.end method

.method public final n()Z
    .locals 0

    .line 1
    iget p0, p0, Laj;->q:I

    .line 2
    .line 3
    if-lez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public o()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laj;->C:Z

    .line 3
    .line 4
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Laj;->C:Z

    .line 3
    .line 4
    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Laj;->s:Lcj;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lcj;->E:Lf3;

    .line 8
    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const-string p1, "Fragment "

    .line 16
    .line 17
    const-string p2, " not attached to an activity."

    .line 18
    .line 19
    invoke-static {p1, p0, p2}, Lg9;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laj;->C:Z

    .line 3
    .line 4
    return-void
.end method

.method public p(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Laj;->C:Z

    .line 3
    .line 4
    iget-object v0, p0, Laj;->s:Lcj;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Lcj;->E:Lf3;

    .line 11
    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iput-boolean p1, p0, Laj;->C:Z

    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public q(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laj;->C:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v2, "android:support:fragments"

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Laj;->t:Lqj;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Lpj;->Q(Landroid/os/Parcelable;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Laj;->t:Lqj;

    .line 21
    .line 22
    iput-boolean v1, p1, Lpj;->E:Z

    .line 23
    .line 24
    iput-boolean v1, p1, Lpj;->F:Z

    .line 25
    .line 26
    iget-object v2, p1, Lpj;->L:Ltj;

    .line 27
    .line 28
    iput-boolean v1, v2, Ltj;->g:Z

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lpj;->t(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Laj;->t:Lqj;

    .line 34
    .line 35
    iget p1, p0, Lpj;->s:I

    .line 36
    .line 37
    if-lt p1, v0, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iput-boolean v1, p0, Lpj;->E:Z

    .line 41
    .line 42
    iput-boolean v1, p0, Lpj;->F:Z

    .line 43
    .line 44
    iget-object p1, p0, Lpj;->L:Ltj;

    .line 45
    .line 46
    iput-boolean v1, p1, Ltj;->g:Z

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lpj;->t(I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public r(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public s()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laj;->C:Z

    .line 3
    .line 4
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laj;->C:Z

    .line 3
    .line 4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "{"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "} ("

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Laj;->e:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v1, p0, Laj;->v:I

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    const-string v1, " id=0x"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v1, p0, Laj;->v:I

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v1, p0, Laj;->x:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    const-string v1, " tag="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Laj;->x:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_1
    const-string p0, ")"

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method

.method public u(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object p1, p0, Laj;->s:Lcj;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lcj;->I:Lf3;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p0, p0, Laj;->t:Lqj;

    .line 16
    .line 17
    iget-object p0, p0, Lpj;->f:Lfj;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    const-string p0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    .line 24
    .line 25
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public abstract v(Landroid/os/Bundle;)V
.end method

.method public w()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laj;->C:Z

    .line 3
    .line 4
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laj;->C:Z

    .line 3
    .line 4
    return-void
.end method

.method public y(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Laj;->C:Z

    .line 3
    .line 4
    return-void
.end method

.method public z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p3, p0, Laj;->t:Lqj;

    .line 2
    .line 3
    invoke-virtual {p3}, Lpj;->K()V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x1

    .line 7
    iput-boolean p3, p0, Laj;->p:Z

    .line 8
    .line 9
    new-instance p3, Lbk;

    .line 10
    .line 11
    invoke-virtual {p0}, Laj;->d()Li60;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p3, p0, v0}, Lbk;-><init>(Laj;Li60;)V

    .line 16
    .line 17
    .line 18
    iput-object p3, p0, Laj;->N:Lbk;

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Laj;->r(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Laj;->E:Landroid/view/View;

    .line 25
    .line 26
    iget-object p2, p0, Laj;->N:Lbk;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p2}, Lbk;->f()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Laj;->E:Landroid/view/View;

    .line 34
    .line 35
    iget-object p2, p0, Laj;->N:Lbk;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget p3, Ljv;->view_tree_lifecycle_owner:I

    .line 41
    .line 42
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Laj;->E:Landroid/view/View;

    .line 46
    .line 47
    iget-object p2, p0, Laj;->N:Lbk;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    sget p3, Lkv;->view_tree_view_model_store_owner:I

    .line 53
    .line 54
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Laj;->E:Landroid/view/View;

    .line 58
    .line 59
    iget-object p2, p0, Laj;->N:Lbk;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    sget p3, Llv;->view_tree_saved_state_registry_owner:I

    .line 65
    .line 66
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Laj;->O:Lms;

    .line 70
    .line 71
    iget-object p0, p0, Laj;->N:Lbk;

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Lms;->d(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    iget-object p1, p2, Lbk;->c:Ltn;

    .line 78
    .line 79
    if-nez p1, :cond_1

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Laj;->N:Lbk;

    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    const-string p0, "Called getViewLifecycleOwner() but onCreateView() returned null"

    .line 86
    .line 87
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
