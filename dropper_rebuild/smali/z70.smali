.class public Lz70;
.super Lb80;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final c:Landroid/view/WindowInsets$Builder;

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lb80;-><init>()V

    .line 23
    invoke-static {}, Ly70;->b()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, Lz70;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lj80;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb80;-><init>(Lj80;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lj80;->f()Landroid/view/WindowInsets;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Ly70;->c(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Ly70;->b()Landroid/view/WindowInsets$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    iput-object p1, p0, Lz70;->c:Landroid/view/WindowInsets$Builder;

    .line 20
    .line 21
    return-void
.end method

.method public b()Lj80;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb80;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lz70;->c:Landroid/view/WindowInsets$Builder;

    .line 5
    .line 6
    invoke-static {v0}, Ly70;->d(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1, v0}, Lj80;->g(Landroid/view/View;Landroid/view/WindowInsets;)Lj80;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p0, p0, Lb80;->b:[Lhm;

    .line 16
    .line 17
    iget-object v1, v0, Lj80;->a:Lh80;

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Lh80;->o([Lhm;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public d(Lhm;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lz70;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lhm;->d()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Ly70;->k(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public e(Lhm;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lz70;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lhm;->d()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Ly70;->h(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f(Lhm;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lz70;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lhm;->d()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Ly70;->j(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public g(Lhm;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lz70;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lhm;->d()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Ly70;->f(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public h(Lhm;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lz70;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lhm;->d()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Ly70;->l(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
