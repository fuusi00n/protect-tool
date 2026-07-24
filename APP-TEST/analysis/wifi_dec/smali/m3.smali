.class public final Lm3;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public a:Landroid/os/Parcelable;

.field public b:Ljava/lang/Object;

.field public c:Z

.field public d:Z

.field public e:Z

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Luy;

    invoke-direct {v0}, Luy;-><init>()V

    iput-object v0, p0, Lm3;->f:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lm3;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lm3;->a:Landroid/os/Parcelable;

    .line 3
    .line 4
    iput-object v0, p0, Lm3;->b:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lm3;->c:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lm3;->d:Z

    .line 10
    .line 11
    iput-object p1, p0, Lm3;->f:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm3;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/CompoundButton;

    .line 4
    .line 5
    invoke-static {v0}, Lgb;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    iget-boolean v2, p0, Lm3;->c:Z

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-boolean v2, p0, Lm3;->d:Z

    .line 16
    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-boolean v2, p0, Lm3;->c:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Lm3;->a:Landroid/os/Parcelable;

    .line 28
    .line 29
    check-cast v2, Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    invoke-static {v1, v2}, Lqf;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-boolean v2, p0, Lm3;->d:Z

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iget-object p0, p0, Lm3;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Landroid/graphics/PorterDuff$Mode;

    .line 41
    .line 42
    invoke-static {v1, p0}, Lqf;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm3;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll3;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    iget-boolean v2, p0, Lm3;->c:Z

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-boolean v2, p0, Lm3;->d:Z

    .line 16
    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-boolean v2, p0, Lm3;->c:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Lm3;->a:Landroid/os/Parcelable;

    .line 28
    .line 29
    check-cast v2, Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    invoke-static {v1, v2}, Lqf;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-boolean v2, p0, Lm3;->d:Z

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iget-object p0, p0, Lm3;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Landroid/graphics/PorterDuff$Mode;

    .line 41
    .line 42
    invoke-static {v1, p0}, Lqf;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {v0, v1}, Ll3;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    return-void
.end method

.method public c(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lm3;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lm3;->a:Landroid/os/Parcelable;

    .line 7
    .line 8
    check-cast v0, Landroid/os/Bundle;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Lm3;->a:Landroid/os/Parcelable;

    .line 17
    .line 18
    check-cast v2, Landroid/os/Bundle;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lm3;->a:Landroid/os/Parcelable;

    .line 26
    .line 27
    check-cast p1, Landroid/os/Bundle;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    iput-object v1, p0, Lm3;->a:Landroid/os/Parcelable;

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    return-object v1

    .line 42
    :cond_3
    const-string p0, "You can consumeRestoredStateForKey only after super.onCreate of corresponding component"

    .line 43
    .line 44
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v1
.end method

.method public d(Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    iget-object p0, p0, Lm3;->f:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Landroid/widget/CompoundButton;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v1, Liw;->CompoundButton:[I

    .line 11
    .line 12
    invoke-static {p0, p1, v1, p2}, Ly2;->p(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ly2;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v7, v1

    .line 19
    check-cast v7, Landroid/content/res/TypedArray;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Liw;->CompoundButton:[I

    .line 26
    .line 27
    iget-object v3, p0, Ly2;->c:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v4, v3

    .line 30
    check-cast v4, Landroid/content/res/TypedArray;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    move-object v3, p1

    .line 34
    move v5, p2

    .line 35
    invoke-static/range {v0 .. v6}, Lw50;->k(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    sget p1, Liw;->CompoundButton_buttonCompat:I

    .line 39
    .line 40
    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 p2, 0x0

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    sget p1, Liw;->CompoundButton_buttonCompat:I

    .line 48
    .line 49
    invoke-virtual {v7, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 50
    .line 51
    .line 52
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    :try_start_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1, p1}, Lvd;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    move-object p1, v0

    .line 69
    goto :goto_1

    .line 70
    :catch_0
    :cond_0
    :try_start_2
    sget p1, Liw;->CompoundButton_android_button:I

    .line 71
    .line 72
    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    sget p1, Liw;->CompoundButton_android_button:I

    .line 79
    .line 80
    invoke-virtual {v7, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-static {p2, p1}, Lvd;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    :goto_0
    sget p1, Liw;->CompoundButton_buttonTint:I

    .line 98
    .line 99
    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_2

    .line 104
    .line 105
    sget p1, Liw;->CompoundButton_buttonTint:I

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Ly2;->f(I)Landroid/content/res/ColorStateList;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v0, p1}, Lfb;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    sget p1, Liw;->CompoundButton_buttonTintMode:I

    .line 115
    .line 116
    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_3

    .line 121
    .line 122
    sget p1, Liw;->CompoundButton_buttonTintMode:I

    .line 123
    .line 124
    const/4 p2, -0x1

    .line 125
    invoke-virtual {v7, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    const/4 p2, 0x0

    .line 130
    invoke-static {p1, p2}, Lwf;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {v0, p1}, Lfb;->d(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-virtual {p0}, Ly2;->r()V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :goto_1
    invoke-virtual {p0}, Ly2;->r()V

    .line 142
    .line 143
    .line 144
    throw p1
.end method

.method public e(Ljava/lang/String;Lbz;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lm3;->f:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Luy;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Luy;->a(Ljava/lang/Object;)Lry;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, v0, Lry;->b:Ljava/lang/Object;

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    new-instance v0, Lry;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Lry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Luy;->d:I

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    iput p1, p0, Luy;->d:I

    .line 27
    .line 28
    iget-object p1, p0, Luy;->b:Lry;

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iput-object v0, p0, Luy;->a:Lry;

    .line 33
    .line 34
    iput-object v0, p0, Luy;->b:Lry;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iput-object v0, p1, Lry;->c:Lry;

    .line 38
    .line 39
    iput-object p1, v0, Lry;->d:Lry;

    .line 40
    .line 41
    iput-object v0, p0, Luy;->b:Lry;

    .line 42
    .line 43
    :goto_0
    const/4 p0, 0x0

    .line 44
    :goto_1
    check-cast p0, Lbz;

    .line 45
    .line 46
    if-nez p0, :cond_2

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    const-string p0, "SavedStateProvider with the given key is already registered"

    .line 50
    .line 51
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    const-class v0, Lkn;

    .line 2
    .line 3
    iget-boolean v1, p0, Lm3;->e:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Lm3;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ld3;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ld3;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Ld3;-><init>(Lm3;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-object v1, p0, Lm3;->b:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lm3;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Ld3;

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object p0, p0, Ld3;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Ljava/util/LinkedHashSet;

    .line 37
    .line 38
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void

    .line 42
    :catch_0
    move-exception p0

    .line 43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v3, "Class "

    .line 52
    .line 53
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, " must have default constructor in order to be automatically recreated"

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :cond_2
    const-string p0, "Can not perform this action after onSaveInstanceState"

    .line 73
    .line 74
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
