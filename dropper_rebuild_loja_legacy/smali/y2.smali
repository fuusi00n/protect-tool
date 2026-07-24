.class public final Ly2;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# static fields
.field public static e:Ly2;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Ly2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Ly2;->a:I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ly2;->b:Ljava/lang/Object;

    .line 42
    iput-object p2, p0, Ly2;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Ly2;->a:I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lc40;

    .line 45
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Ly2;->d:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Ly2;->b:Ljava/lang/Object;

    .line 48
    iput-object p2, p0, Ly2;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Li60;Lh60;Lnd;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Ly2;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Ly2;->b:Ljava/lang/Object;

    .line 29
    iput-object p2, p0, Ly2;->c:Ljava/lang/Object;

    .line 30
    iput-object p3, p0, Ly2;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Ly2;->a:I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ly2;->c:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ly2;->d:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Ly2;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Ly2;->a:I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Ly2;->b:Ljava/lang/Object;

    .line 34
    iput-object p2, p0, Ly2;->c:Ljava/lang/Object;

    .line 35
    iput-object p3, p0, Ly2;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnw;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Ly2;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ly2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance p1, Lf9;

    .line 10
    .line 11
    invoke-direct {p1}, Lf9;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Ly2;->c:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Ly2;->d:Ljava/lang/Object;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Lo0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ly2;->a:I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Ly2;->b:Ljava/lang/Object;

    .line 57
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Ly2;->c:Ljava/lang/Object;

    .line 58
    new-instance p1, Lx2;

    invoke-direct {p1, p0}, Lx2;-><init>(Ly2;)V

    iput-object p1, p0, Ly2;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lun;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Ly2;->a:I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ltn;

    invoke-direct {v0, p1}, Ltn;-><init>(Lrn;)V

    iput-object v0, p0, Ly2;->b:Ljava/lang/Object;

    .line 26
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ly2;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lyb;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ly2;->a:I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly2;->b:Ljava/lang/Object;

    .line 51
    new-instance v0, Ll7;

    .line 52
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Ly2;->c:Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Ly2;->d:Ljava/lang/Object;

    return-void
.end method

.method public static p(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ly2;
    .locals 2

    .line 1
    new-instance v0, Ly2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {v0, p0, p1}, Ly2;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnw;

    .line 4
    .line 5
    iget-object v0, v0, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-gez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p2}, Ly2;->j(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    :goto_0
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lf9;

    .line 21
    .line 22
    invoke-virtual {v1, p2, p3}, Lf9;->e(IZ)V

    .line 23
    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ly2;->n(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnw;

    .line 4
    .line 5
    iget-object v0, v0, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-gez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p2}, Ly2;->j(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    :goto_0
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lf9;

    .line 21
    .line 22
    invoke-virtual {v1, p2, p4}, Lf9;->e(IZ)V

    .line 23
    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ly2;->n(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_4

    .line 35
    .line 36
    invoke-virtual {p0}, Lkx;->j()Z

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    if-nez p4, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lkx;->o()Z

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    if-eqz p4, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string p3, "Called attach on a child which is not detached: "

    .line 54
    .line 55
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_3
    :goto_1
    iget p4, p0, Lkx;->j:I

    .line 77
    .line 78
    and-int/lit16 p4, p4, -0x101

    .line 79
    .line 80
    iput p4, p0, Lkx;->j:I

    .line 81
    .line 82
    :cond_4
    invoke-static {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public c(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ly2;->j(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Ly2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lf9;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lf9;->f(I)Z

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Ly2;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lnw;

    .line 15
    .line 16
    iget-object p0, p0, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lkx;->j()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lkx;->o()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "called detach on an already detached child "

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_1
    :goto_0
    const/16 v1, 0x100

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lkx;->a(I)V

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public d(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ly2;->j(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Ly2;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lnw;

    .line 8
    .line 9
    iget-object p0, p0, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Ly2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnw;

    .line 4
    .line 5
    iget-object v0, v0, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object p0, p0, Ly2;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    sub-int/2addr v0, p0

    .line 20
    return v0
.end method

.method public f(I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p0, Ly2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Ly2;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p0, v1}, Lvd;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public g(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Ly2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Ly2;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p0, v1}, Lvd;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public h(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Ly2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Ly2;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/content/res/TypedArray;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lj4;->a()Lj4;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object p0, p0, Ly2;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Landroid/content/Context;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, v0, Lj4;->a:Lcy;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-virtual {v1, p0, p1, v2}, Lcy;->e(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    .line 39
    return-object p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method public i(IILk5;)Landroid/graphics/Typeface;
    .locals 9

    .line 1
    iget-object v0, p0, Ly2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Ly2;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Landroid/util/TypedValue;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    new-instance p1, Landroid/util/TypedValue;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Ly2;->d:Ljava/lang/Object;

    .line 25
    .line 26
    :cond_1
    iget-object p1, p0, Ly2;->b:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v2, p1

    .line 29
    check-cast v2, Landroid/content/Context;

    .line 30
    .line 31
    iget-object p0, p0, Ly2;->d:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v4, p0

    .line 34
    check-cast v4, Landroid/util/TypedValue;

    .line 35
    .line 36
    sget-object p0, Ljy;->a:Ljava/lang/ThreadLocal;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    :goto_0
    const/4 p0, 0x0

    .line 45
    return-object p0

    .line 46
    :cond_2
    const/4 v7, 0x1

    .line 47
    const/4 v8, 0x0

    .line 48
    move v5, p2

    .line 49
    move-object v6, p3

    .line 50
    invoke-static/range {v2 .. v8}, Ljy;->b(Landroid/content/Context;ILandroid/util/TypedValue;ILyt;ZZ)Landroid/graphics/Typeface;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public j(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Ly2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf9;

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object p0, p0, Ly2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lnw;

    .line 11
    .line 12
    iget-object p0, p0, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    move v1, p1

    .line 19
    :goto_0
    if-ge v1, p0, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lf9;->b(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sub-int v2, v1, v2

    .line 26
    .line 27
    sub-int v2, p1, v2

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    :goto_1
    invoke-virtual {v0, v1}, Lf9;->d(I)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    return v1

    .line 41
    :cond_2
    add-int/2addr v1, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    :goto_2
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public k(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Ly2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lnw;

    .line 4
    .line 5
    iget-object p0, p0, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public l()I
    .locals 0

    .line 1
    iget-object p0, p0, Ly2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lnw;

    .line 4
    .line 5
    iget-object p0, p0, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public m(Ls9;Ljava/lang/String;)Le60;
    .locals 5

    .line 1
    iget-object v0, p0, Ly2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh60;

    .line 4
    .line 5
    iget-object v1, p0, Ly2;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Li60;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v1, v1, Li60;->a:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Le60;

    .line 19
    .line 20
    iget-object v3, p1, Ls9;->a:Ljava/lang/Class;

    .line 21
    .line 22
    sget-object v4, Ls9;->b:Ljava/util/Map;

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Ljava/lang/Integer;

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-static {v4, v2}, Ld40;->x(ILjava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    invoke-static {v3}, Lox;->a(Ljava/lang/Class;)Ls9;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v4}, Lvd;->t(Ls9;)Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object v4, v3

    .line 60
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    :goto_1
    if-eqz v4, :cond_3

    .line 65
    .line 66
    instance-of p0, v0, Lez;

    .line 67
    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    return-object v2

    .line 77
    :cond_3
    new-instance v2, Lls;

    .line 78
    .line 79
    iget-object p0, p0, Ly2;->d:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p0, Lnd;

    .line 82
    .line 83
    invoke-direct {v2, p0}, Lls;-><init>(Lnd;)V

    .line 84
    .line 85
    .line 86
    sget-object p0, Lqg;->k:Lqg;

    .line 87
    .line 88
    iget-object v4, v2, Lnd;->a:Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    invoke-interface {v4, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :try_start_0
    iget-object p0, p1, Ls9;->a:Ljava/lang/Class;

    .line 94
    .line 95
    invoke-interface {v0, p0, v2}, Lh60;->a(Ljava/lang/Class;Lls;)Le60;

    .line 96
    .line 97
    .line 98
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_2

    .line 100
    :catch_0
    :try_start_1
    invoke-interface {v0, v3, v2}, Lh60;->a(Ljava/lang/Class;Lls;)Le60;

    .line 101
    .line 102
    .line 103
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    goto :goto_2

    .line 105
    :catch_1
    invoke-interface {v0, v3}, Lh60;->b(Ljava/lang/Class;)Le60;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-interface {v1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Le60;

    .line 117
    .line 118
    if-eqz p1, :cond_4

    .line 119
    .line 120
    invoke-virtual {p1}, Le60;->a()V

    .line 121
    .line 122
    .line 123
    :cond_4
    return-object p0
.end method

.method public n(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Ly2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lnw;

    .line 11
    .line 12
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object v0, p1, Lkx;->a:Landroid/view/View;

    .line 19
    .line 20
    iget-object p0, p0, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    iget v1, p1, Lkx;->q:I

    .line 23
    .line 24
    const/4 v2, -0x1

    .line 25
    if-eq v1, v2, :cond_0

    .line 26
    .line 27
    iput v1, p1, Lkx;->p:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object v1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, p1, Lkx;->p:I

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x4

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iput v2, p1, Lkx;->q:I

    .line 46
    .line 47
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->p0:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    sget-object p0, Lw50;->a:Ljava/util/WeakHashMap;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public o(ILnb;Lxb;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Ly2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ll7;

    .line 4
    .line 5
    iget-object v0, p3, Lxb;->p0:[I

    .line 6
    .line 7
    iget-object v1, p3, Lxb;->t:[I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aget v3, v0, v2

    .line 11
    .line 12
    iput v3, p0, Ll7;->a:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    aget v0, v0, v3

    .line 16
    .line 17
    iput v0, p0, Ll7;->b:I

    .line 18
    .line 19
    invoke-virtual {p3}, Lxb;->q()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Ll7;->c:I

    .line 24
    .line 25
    invoke-virtual {p3}, Lxb;->k()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Ll7;->d:I

    .line 30
    .line 31
    iput-boolean v2, p0, Ll7;->i:Z

    .line 32
    .line 33
    iput p1, p0, Ll7;->j:I

    .line 34
    .line 35
    iget p1, p0, Ll7;->a:I

    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    if-ne p1, v0, :cond_0

    .line 39
    .line 40
    move p1, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move p1, v2

    .line 43
    :goto_0
    iget v4, p0, Ll7;->b:I

    .line 44
    .line 45
    if-ne v4, v0, :cond_1

    .line 46
    .line 47
    move v0, v3

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v0, v2

    .line 50
    :goto_1
    const/4 v4, 0x0

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget p1, p3, Lxb;->W:F

    .line 54
    .line 55
    cmpl-float p1, p1, v4

    .line 56
    .line 57
    if-lez p1, :cond_2

    .line 58
    .line 59
    move p1, v3

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move p1, v2

    .line 62
    :goto_2
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget v0, p3, Lxb;->W:F

    .line 65
    .line 66
    cmpl-float v0, v0, v4

    .line 67
    .line 68
    if-lez v0, :cond_3

    .line 69
    .line 70
    move v0, v3

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    move v0, v2

    .line 73
    :goto_3
    const/4 v4, 0x4

    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    aget p1, v1, v2

    .line 77
    .line 78
    if-ne p1, v4, :cond_4

    .line 79
    .line 80
    iput v3, p0, Ll7;->a:I

    .line 81
    .line 82
    :cond_4
    if-eqz v0, :cond_5

    .line 83
    .line 84
    aget p1, v1, v3

    .line 85
    .line 86
    if-ne p1, v4, :cond_5

    .line 87
    .line 88
    iput v3, p0, Ll7;->b:I

    .line 89
    .line 90
    :cond_5
    invoke-virtual {p2, p3, p0}, Lnb;->b(Lxb;Ll7;)V

    .line 91
    .line 92
    .line 93
    iget p1, p0, Ll7;->e:I

    .line 94
    .line 95
    invoke-virtual {p3, p1}, Lxb;->O(I)V

    .line 96
    .line 97
    .line 98
    iget p1, p0, Ll7;->f:I

    .line 99
    .line 100
    invoke-virtual {p3, p1}, Lxb;->L(I)V

    .line 101
    .line 102
    .line 103
    iget-boolean p1, p0, Ll7;->h:Z

    .line 104
    .line 105
    iput-boolean p1, p3, Lxb;->E:Z

    .line 106
    .line 107
    iget p1, p0, Ll7;->g:I

    .line 108
    .line 109
    invoke-virtual {p3, p1}, Lxb;->I(I)V

    .line 110
    .line 111
    .line 112
    iput v2, p0, Ll7;->j:I

    .line 113
    .line 114
    iget-boolean p0, p0, Ll7;->i:Z

    .line 115
    .line 116
    return p0
.end method

.method public q(Lon;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lmz;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lmz;->run()V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v0, Lmz;

    .line 11
    .line 12
    iget-object v1, p0, Ly2;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ltn;

    .line 15
    .line 16
    invoke-direct {v0, v1, p1}, Lmz;-><init>(Ltn;Lon;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Ly2;->d:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object p0, p0, Ly2;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public r()V
    .locals 0

    .line 1
    iget-object p0, p0, Ly2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public s(Lyb;III)V
    .locals 3

    .line 1
    iget v0, p1, Lxb;->b0:I

    .line 2
    .line 3
    iget v1, p1, Lxb;->c0:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p1, Lxb;->b0:I

    .line 7
    .line 8
    iput v2, p1, Lxb;->c0:I

    .line 9
    .line 10
    invoke-virtual {p1, p3}, Lxb;->O(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p4}, Lxb;->L(I)V

    .line 14
    .line 15
    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    iput v2, p1, Lxb;->b0:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput v0, p1, Lxb;->b0:I

    .line 22
    .line 23
    :goto_0
    if-gez v1, :cond_1

    .line 24
    .line 25
    iput v2, p1, Lxb;->c0:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iput v1, p1, Lxb;->c0:I

    .line 29
    .line 30
    :goto_1
    iget-object p0, p0, Ly2;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Lyb;

    .line 33
    .line 34
    iput p2, p0, Lyb;->t0:I

    .line 35
    .line 36
    invoke-virtual {p0}, Lyb;->U()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public t(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Ly2;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lnw;

    .line 14
    .line 15
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    iget v0, p1, Lkx;->p:I

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iput v0, p1, Lkx;->q:I

    .line 32
    .line 33
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->p0:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p1, Lkx;->a:Landroid/view/View;

    .line 40
    .line 41
    sget-object v1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    const/4 p0, 0x0

    .line 47
    iput p0, p1, Lkx;->p:I

    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ly2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lf9;

    .line 19
    .line 20
    invoke-virtual {v1}, Lf9;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", hidden list:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Ly2;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public u(Lyb;)V
    .locals 8

    .line 1
    iget-object p0, p0, Ly2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lyb;->q0:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    const/4 v3, 0x1

    .line 17
    if-ge v2, v0, :cond_2

    .line 18
    .line 19
    iget-object v4, p1, Lyb;->q0:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lxb;

    .line 26
    .line 27
    iget-object v5, v4, Lxb;->p0:[I

    .line 28
    .line 29
    aget v6, v5, v1

    .line 30
    .line 31
    const/4 v7, 0x3

    .line 32
    if-eq v6, v7, :cond_0

    .line 33
    .line 34
    aget v3, v5, v3

    .line 35
    .line 36
    if-ne v3, v7, :cond_1

    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object p0, p1, Lyb;->s0:Lte;

    .line 45
    .line 46
    iput-boolean v3, p0, Lte;->b:Z

    .line 47
    .line 48
    return-void
.end method
