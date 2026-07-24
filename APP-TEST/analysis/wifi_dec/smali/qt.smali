.class public final Lqt;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public final a:Lww;

.field public b:I

.field public final c:Landroid/graphics/Rect;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lww;I)V
    .locals 0

    .line 1
    iput p2, p0, Lqt;->d:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 p2, -0x80000000

    .line 7
    .line 8
    iput p2, p0, Lqt;->b:I

    .line 9
    .line 10
    new-instance p2, Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lqt;->c:Landroid/graphics/Rect;

    .line 16
    .line 17
    iput-object p1, p0, Lqt;->a:Lww;

    .line 18
    .line 19
    return-void
.end method

.method public static a(Lww;I)Lqt;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    new-instance p1, Lqt;

    .line 7
    .line 8
    invoke-direct {p1, p0, v0}, Lqt;-><init>(Lww;I)V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const-string p0, "invalid orientation"

    .line 13
    .line 14
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    new-instance p1, Lqt;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {p1, p0, v0}, Lqt;-><init>(Lww;I)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method


# virtual methods
.method public final b(Landroid/view/View;)I
    .locals 1

    .line 1
    iget v0, p0, Lqt;->d:I

    .line 2
    .line 3
    iget-object p0, p0, Lqt;->a:Lww;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lxw;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lxw;

    .line 26
    .line 27
    iget-object p1, p1, Lxw;->b:Landroid/graphics/Rect;

    .line 28
    .line 29
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 30
    .line 31
    add-int/2addr p0, p1

    .line 32
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 33
    .line 34
    :goto_0
    add-int/2addr p0, p1

    .line 35
    return p0

    .line 36
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lxw;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lxw;

    .line 54
    .line 55
    iget-object p1, p1, Lxw;->b:Landroid/graphics/Rect;

    .line 56
    .line 57
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 58
    .line 59
    add-int/2addr p0, p1

    .line 60
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/View;)I
    .locals 1

    .line 1
    iget v0, p0, Lqt;->d:I

    .line 2
    .line 3
    iget-object p0, p0, Lqt;->a:Lww;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lxw;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lww;->z(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 22
    .line 23
    add-int/2addr p0, p1

    .line 24
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 25
    .line 26
    :goto_0
    add-int/2addr p0, p1

    .line 27
    return p0

    .line 28
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lxw;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lww;->A(Landroid/view/View;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 42
    .line 43
    add-int/2addr p0, p1

    .line 44
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/view/View;)I
    .locals 1

    .line 1
    iget v0, p0, Lqt;->d:I

    .line 2
    .line 3
    iget-object p0, p0, Lqt;->a:Lww;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lxw;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lww;->A(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 22
    .line 23
    add-int/2addr p0, p1

    .line 24
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 25
    .line 26
    :goto_0
    add-int/2addr p0, p1

    .line 27
    return p0

    .line 28
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lxw;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lww;->z(Landroid/view/View;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 42
    .line 43
    add-int/2addr p0, p1

    .line 44
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Landroid/view/View;)I
    .locals 1

    .line 1
    iget v0, p0, Lqt;->d:I

    .line 2
    .line 3
    iget-object p0, p0, Lqt;->a:Lww;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lxw;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lxw;

    .line 26
    .line 27
    iget-object p1, p1, Lxw;->b:Landroid/graphics/Rect;

    .line 28
    .line 29
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 30
    .line 31
    sub-int/2addr p0, p1

    .line 32
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 33
    .line 34
    :goto_0
    sub-int/2addr p0, p1

    .line 35
    return p0

    .line 36
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lxw;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lxw;

    .line 54
    .line 55
    iget-object p1, p1, Lxw;->b:Landroid/graphics/Rect;

    .line 56
    .line 57
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 58
    .line 59
    sub-int/2addr p0, p1

    .line 60
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lqt;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lqt;->a:Lww;

    .line 7
    .line 8
    iget p0, p0, Lww;->o:I

    .line 9
    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lqt;->a:Lww;

    .line 12
    .line 13
    iget p0, p0, Lww;->n:I

    .line 14
    .line 15
    return p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lqt;->d:I

    .line 2
    .line 3
    iget-object p0, p0, Lqt;->a:Lww;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lww;->o:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lww;->D()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    :goto_0
    sub-int/2addr v0, p0

    .line 15
    return v0

    .line 16
    :pswitch_0
    iget v0, p0, Lww;->n:I

    .line 17
    .line 18
    invoke-virtual {p0}, Lww;->F()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lqt;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lqt;->a:Lww;

    .line 7
    .line 8
    invoke-virtual {p0}, Lww;->D()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Lqt;->a:Lww;

    .line 14
    .line 15
    invoke-virtual {p0}, Lww;->F()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lqt;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lqt;->a:Lww;

    .line 7
    .line 8
    iget p0, p0, Lww;->m:I

    .line 9
    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lqt;->a:Lww;

    .line 12
    .line 13
    iget p0, p0, Lww;->l:I

    .line 14
    .line 15
    return p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Lqt;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lqt;->a:Lww;

    .line 7
    .line 8
    invoke-virtual {p0}, Lww;->G()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Lqt;->a:Lww;

    .line 14
    .line 15
    invoke-virtual {p0}, Lww;->E()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k()I
    .locals 2

    .line 1
    iget v0, p0, Lqt;->d:I

    .line 2
    .line 3
    iget-object p0, p0, Lqt;->a:Lww;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lww;->o:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lww;->G()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    invoke-virtual {p0}, Lww;->D()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    :goto_0
    sub-int/2addr v0, p0

    .line 20
    return v0

    .line 21
    :pswitch_0
    iget v0, p0, Lww;->n:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lww;->E()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sub-int/2addr v0, v1

    .line 28
    invoke-virtual {p0}, Lww;->F()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Landroid/view/View;)I
    .locals 2

    .line 1
    iget v0, p0, Lqt;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lqt;->c:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget-object p0, p0, Lqt;->a:Lww;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v1}, Lww;->K(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    .line 14
    .line 15
    return p0

    .line 16
    :pswitch_0
    invoke-virtual {p0, p1, v1}, Lww;->K(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    iget p0, v1, Landroid/graphics/Rect;->right:I

    .line 20
    .line 21
    return p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m(Landroid/view/View;)I
    .locals 2

    .line 1
    iget v0, p0, Lqt;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lqt;->c:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget-object p0, p0, Lqt;->a:Lww;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v1}, Lww;->K(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    iget p0, v1, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    return p0

    .line 16
    :pswitch_0
    invoke-virtual {p0, p1, v1}, Lww;->K(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    iget p0, v1, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    return p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n(I)V
    .locals 1

    .line 1
    iget v0, p0, Lqt;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lqt;->a:Lww;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lww;->P(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p0, p0, Lqt;->a:Lww;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lww;->O(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
