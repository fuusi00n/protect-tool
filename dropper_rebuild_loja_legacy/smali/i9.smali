.class public final Li9;
.super Lns;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Li9;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Li9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final r(I)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final p(I)V
    .locals 0

    .line 1
    iget p1, p0, Li9;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Li9;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lg20;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lg20;->d:Z

    .line 12
    .line 13
    iget-object p0, p0, Lg20;->e:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ll9;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Ll9;->u()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lxq;->invalidateSelf()V

    .line 27
    .line 28
    .line 29
    :cond_0
    :pswitch_0
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 1
    iget p1, p0, Li9;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Li9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    check-cast p0, Lg20;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lg20;->d:Z

    .line 15
    .line 16
    iget-object p0, p0, Lg20;->e:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ll9;

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Ll9;->u()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lxq;->invalidateSelf()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void

    .line 33
    :pswitch_0
    check-cast p0, Lcom/google/android/material/chip/Chip;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 36
    .line 37
    iget-boolean p2, p1, Ll9;->C0:Z

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    iget-object p1, p1, Ll9;->E:Ljava/lang/CharSequence;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
