.class public final Ld8;
.super Lns;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final a:Landroid/graphics/Typeface;

.field public final b:Lo0;

.field public c:Z

.method public constructor <init>(Lo0;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ld8;->a:Landroid/graphics/Typeface;

    .line 5
    .line 6
    iput-object p1, p0, Ld8;->b:Lo0;

    .line 7
    .line 8
    return-void
.end method

.method public final p(I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Ld8;->c:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Ld8;->b:Lo0;

    .line 6
    .line 7
    iget-object p1, p1, Lo0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Laa;

    .line 10
    .line 11
    iget-object p0, p0, Ld8;->a:Landroid/graphics/Typeface;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Laa;->j(Landroid/graphics/Typeface;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    invoke-virtual {p1, p0}, Laa;->h(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final q(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Ld8;->c:Z

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ld8;->b:Lo0;

    .line 6
    .line 7
    iget-object p0, p0, Lo0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Laa;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Laa;->j(Landroid/graphics/Typeface;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Laa;->h(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
