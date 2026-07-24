.class public Lf80;
.super Le80;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public n:Lhm;

.field public o:Lhm;

.field public p:Lhm;


# direct methods
.method public constructor <init>(Lj80;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le80;-><init>(Lj80;Landroid/view/WindowInsets;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lf80;->n:Lhm;

    .line 6
    .line 7
    iput-object p1, p0, Lf80;->o:Lhm;

    .line 8
    .line 9
    iput-object p1, p0, Lf80;->p:Lhm;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public g()Lhm;
    .locals 1

    .line 1
    iget-object v0, p0, Lf80;->o:Lhm;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lc80;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Ly70;->g(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lhm;->c(Landroid/graphics/Insets;)Lhm;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lf80;->o:Lhm;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lf80;->o:Lhm;

    .line 18
    .line 19
    return-object p0
.end method

.method public i()Lhm;
    .locals 1

    .line 1
    iget-object v0, p0, Lf80;->n:Lhm;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lc80;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Ly70;->i(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lhm;->c(Landroid/graphics/Insets;)Lhm;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lf80;->n:Lhm;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lf80;->n:Lhm;

    .line 18
    .line 19
    return-object p0
.end method

.method public k()Lhm;
    .locals 1

    .line 1
    iget-object v0, p0, Lf80;->p:Lhm;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lc80;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Ly70;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lhm;->c(Landroid/graphics/Insets;)Lhm;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lf80;->p:Lhm;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lf80;->p:Lhm;

    .line 18
    .line 19
    return-object p0
.end method

.method public l(IIII)Lj80;
    .locals 0

    .line 1
    iget-object p0, p0, Lc80;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Ly70;->e(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-static {p1, p0}, Lj80;->g(Landroid/view/View;Landroid/view/WindowInsets;)Lj80;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public q(Lhm;)V
    .locals 0

    .line 1
    return-void
.end method
