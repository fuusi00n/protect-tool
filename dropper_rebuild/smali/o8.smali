.class public final Lo8;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Landroid/view/View$OnAttachStateChangeListener;

.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo8;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lo8;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lo8;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lo8;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lw50;->a:Ljava/util/WeakHashMap;

    .line 15
    .line 16
    invoke-static {v0}, Lj50;->c(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    check-cast v0, Lkh;

    .line 21
    .line 22
    iget-object p0, v0, Lkh;->t:Landroid/view/accessibility/AccessibilityManager;

    .line 23
    .line 24
    iget-object p1, v0, Lkh;->u:Lkg;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    sget-object p1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object p1, v0, Lkh;->u:Lkg;

    .line 39
    .line 40
    new-instance v0, Lb0;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Lb0;-><init>(Lkg;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    :pswitch_2
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lo8;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lo8;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, La10;

    .line 9
    .line 10
    iget-object v0, v1, La10;->o:Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, v1, La10;->o:Landroid/view/ViewTreeObserver;

    .line 25
    .line 26
    :cond_0
    iget-object v0, v1, La10;->o:Landroid/view/ViewTreeObserver;

    .line 27
    .line 28
    iget-object v1, v1, La10;->i:Lz4;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 34
    .line 35
    .line 36
    :pswitch_0
    return-void

    .line 37
    :pswitch_1
    check-cast v1, Lkh;

    .line 38
    .line 39
    iget-object p0, v1, Lkh;->u:Lkg;

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    iget-object p1, v1, Lkh;->t:Landroid/view/accessibility/AccessibilityManager;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    new-instance v0, Lb0;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lb0;-><init>(Lkg;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void

    .line 56
    :pswitch_2
    check-cast v1, Lr8;

    .line 57
    .line 58
    iget-object v0, v1, Lr8;->x:Landroid/view/ViewTreeObserver;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, v1, Lr8;->x:Landroid/view/ViewTreeObserver;

    .line 73
    .line 74
    :cond_3
    iget-object v0, v1, Lr8;->x:Landroid/view/ViewTreeObserver;

    .line 75
    .line 76
    iget-object v1, v1, Lr8;->i:Lz4;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
