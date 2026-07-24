.class public final synthetic Lta;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lqn;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lta;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lta;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lrn;Lon;)V
    .locals 0

    .line 1
    iget p1, p0, Lta;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lta;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lm3;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object p1, Lon;->ON_START:Lon;

    .line 14
    .line 15
    if-ne p2, p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lm3;->e:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p1, Lon;->ON_STOP:Lon;

    .line 22
    .line 23
    if-ne p2, p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lm3;->e:Z

    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void

    .line 29
    :pswitch_0
    check-cast p0, Lf3;

    .line 30
    .line 31
    sget-object p1, Lon;->ON_DESTROY:Lon;

    .line 32
    .line 33
    if-ne p2, p1, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Ldb;->b:Lhc;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    iput-object p2, p1, Lhc;->b:Ldb;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Ldb;->d()Li60;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Li60;->a()V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object p0, p0, Ldb;->f:Lza;

    .line 54
    .line 55
    iget-object p1, p0, Lza;->d:Lf3;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p2, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void

    .line 84
    :pswitch_1
    check-cast p0, Lf3;

    .line 85
    .line 86
    sget-object p1, Lon;->ON_STOP:Lon;

    .line 87
    .line 88
    if-ne p2, p1, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    if-eqz p0, :cond_4

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-eqz p0, :cond_4

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 103
    .line 104
    .line 105
    :cond_4
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
