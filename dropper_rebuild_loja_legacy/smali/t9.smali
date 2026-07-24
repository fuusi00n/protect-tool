.class public final synthetic Lt9;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lt9;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lt9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lt9;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lt9;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lcom/turbo/live/ui/SettingsActivity;

    .line 10
    .line 11
    sget p1, Lcom/turbo/live/ui/SettingsActivity;->y:I

    .line 12
    .line 13
    invoke-virtual {p0}, Ldb;->h()Llt;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Llt;->b()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast p0, Lcom/turbo/live/ui/ProfileActivity;

    .line 22
    .line 23
    sget p1, Lcom/turbo/live/ui/ProfileActivity;->y:I

    .line 24
    .line 25
    invoke-virtual {p0}, Ldb;->h()Llt;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Llt;->b()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_1
    check-cast p0, Lvt;

    .line 34
    .line 35
    iget-object p1, p0, Lvt;->f:Landroid/widget/EditText;

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object v1, p0, Lvt;->f:Landroid/widget/EditText;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v1, 0x0

    .line 59
    :goto_0
    iget-object v2, p0, Lvt;->f:Landroid/widget/EditText;

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    if-ltz p1, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lvt;->f:Landroid/widget/EditText;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-virtual {p0}, Llh;->p()V

    .line 82
    .line 83
    .line 84
    :goto_2
    return-void

    .line 85
    :pswitch_2
    check-cast p0, Luq;

    .line 86
    .line 87
    invoke-virtual {p0}, Luq;->F()V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :pswitch_3
    check-cast p0, Llg;

    .line 92
    .line 93
    invoke-virtual {p0}, Llg;->t()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_4
    check-cast p0, Lx9;

    .line 98
    .line 99
    iget-object p1, p0, Lx9;->i:Landroid/widget/EditText;

    .line 100
    .line 101
    if-nez p1, :cond_4

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 111
    .line 112
    .line 113
    :cond_5
    invoke-virtual {p0}, Llh;->p()V

    .line 114
    .line 115
    .line 116
    :goto_3
    return-void

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
