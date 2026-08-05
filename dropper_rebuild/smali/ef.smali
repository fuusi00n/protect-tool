.class public Lef;
.super Laj;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;

.field public final T:Lbf;

.field public final U:Lcf;

.field public V:I

.field public W:I

.field public X:Z

.field public Y:Z

.field public Z:I

.field public a0:Z

.field public final b0:Lo0;

.field public c0:Landroid/app/Dialog;

.field public d0:Z

.field public e0:Z

.field public f0:Z

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Laj;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu6;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1, p0}, Lu6;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lbf;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lbf;-><init>(Lef;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lef;->T:Lbf;

    .line 16
    .line 17
    new-instance v0, Lcf;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcf;-><init>(Lef;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lef;->U:Lcf;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lef;->V:I

    .line 26
    .line 27
    iput v0, p0, Lef;->W:I

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lef;->X:Z

    .line 31
    .line 32
    iput-boolean v1, p0, Lef;->Y:Z

    .line 33
    .line 34
    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lef;->Z:I

    .line 36
    .line 37
    new-instance v1, Lo0;

    .line 38
    .line 39
    const/16 v2, 0xa

    .line 40
    .line 41
    invoke-direct {v1, v2, p0}, Lo0;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lef;->b0:Lo0;

    .line 45
    .line 46
    iput-boolean v0, p0, Lef;->f0:Z

    .line 47
    .line 48
    return-void
.end method

.method public E()Landroid/app/Dialog;
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lpj;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Laj;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    :cond_0
    new-instance v0, Leb;

    .line 12
    .line 13
    invoke-virtual {p0}, Laj;->A()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget p0, p0, Lef;->W:I

    .line 18
    .line 19
    invoke-direct {v0, v1, p0}, Leb;-><init>(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final c()Lvd;
    .locals 2

    .line 1
    new-instance v0, Lyi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lyi;-><init>(Laj;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ldf;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Ldf;-><init>(Lef;Lyi;)V

    .line 9
    .line 10
    .line 11
    return-object v1
.end method

.method public final o()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laj;->C:Z

    .line 3
    .line 4
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    .line 1
    iget-boolean p1, p0, Lef;->d0:Z

    .line 2
    .line 3
    if-nez p1, :cond_a

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-static {p1}, Lpj;->E(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Laj;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Lef;->e0:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lef;->e0:Z

    .line 23
    .line 24
    iget-object v1, p0, Lef;->c0:Landroid/app/Dialog;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lef;->c0:Landroid/app/Dialog;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 35
    .line 36
    .line 37
    :cond_2
    iput-boolean v0, p0, Lef;->d0:Z

    .line 38
    .line 39
    iget v1, p0, Lef;->Z:I

    .line 40
    .line 41
    const/4 v2, -0x1

    .line 42
    if-ltz v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0}, Laj;->j()Lpj;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget v1, p0, Lef;->Z:I

    .line 49
    .line 50
    if-ltz v1, :cond_3

    .line 51
    .line 52
    new-instance v3, Loj;

    .line 53
    .line 54
    invoke-direct {v3, p1, v1}, Loj;-><init>(Lpj;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v3, v0}, Lpj;->w(Lnj;Z)V

    .line 58
    .line 59
    .line 60
    iput v2, p0, Lef;->Z:I

    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    const-string p0, "Bad id: "

    .line 64
    .line 65
    invoke-static {p0, v1}, Lg9;->f(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    invoke-virtual {p0}, Laj;->j()Lpj;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v3, Ly6;

    .line 74
    .line 75
    invoke-direct {v3, v1}, Ly6;-><init>(Lpj;)V

    .line 76
    .line 77
    .line 78
    iput-boolean v0, v3, Ly6;->o:Z

    .line 79
    .line 80
    iget-object v1, p0, Laj;->r:Lpj;

    .line 81
    .line 82
    iget-object v4, v3, Ly6;->p:Lpj;

    .line 83
    .line 84
    if-eqz v1, :cond_6

    .line 85
    .line 86
    if-ne v1, v4, :cond_5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v1, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Laj;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p0, " is already attached to a FragmentManager."

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1

    .line 118
    :cond_6
    :goto_0
    new-instance v1, Lak;

    .line 119
    .line 120
    invoke-direct {v1, p1, p0}, Lak;-><init>(ILaj;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v1}, Ly6;->b(Lak;)V

    .line 124
    .line 125
    .line 126
    iget-boolean p0, v3, Ly6;->q:Z

    .line 127
    .line 128
    if-nez p0, :cond_9

    .line 129
    .line 130
    const/4 p0, 0x2

    .line 131
    invoke-static {p0}, Lpj;->E(I)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-eqz p0, :cond_7

    .line 136
    .line 137
    invoke-virtual {v3}, Ly6;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    new-instance p0, Lip;

    .line 141
    .line 142
    invoke-direct {p0}, Lip;-><init>()V

    .line 143
    .line 144
    .line 145
    new-instance p1, Ljava/io/PrintWriter;

    .line 146
    .line 147
    invoke-direct {p1, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 148
    .line 149
    .line 150
    const-string p0, "  "

    .line 151
    .line 152
    invoke-virtual {v3, p0, p1, v0}, Ly6;->d(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 156
    .line 157
    .line 158
    :cond_7
    iput-boolean v0, v3, Ly6;->q:Z

    .line 159
    .line 160
    iget-boolean p0, v3, Ly6;->g:Z

    .line 161
    .line 162
    if-eqz p0, :cond_8

    .line 163
    .line 164
    iget-object p0, v4, Lpj;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    iput p0, v3, Ly6;->r:I

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_8
    iput v2, v3, Ly6;->r:I

    .line 174
    .line 175
    :goto_1
    invoke-virtual {v4, v3, v0}, Lpj;->w(Lnj;Z)V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_9
    const-string p0, "commit already called"

    .line 180
    .line 181
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_a
    :goto_2
    return-void
.end method

.method public final p(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Laj;->p(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Laj;->O:Lms;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string v0, "observeForever"

    .line 10
    .line 11
    invoke-static {v0}, Lms;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lxo;

    .line 15
    .line 16
    iget-object v1, p0, Lef;->b0:Lo0;

    .line 17
    .line 18
    invoke-direct {v0, p1, v1}, Lxo;-><init>(Lms;Lo0;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p1, Lms;->b:Luy;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Luy;->a(Ljava/lang/Object;)Lry;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object p1, v2, Lry;->b:Ljava/lang/Object;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    new-instance v2, Lry;

    .line 34
    .line 35
    invoke-direct {v2, v1, v0}, Lry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget v1, p1, Luy;->d:I

    .line 39
    .line 40
    add-int/2addr v1, v3

    .line 41
    iput v1, p1, Luy;->d:I

    .line 42
    .line 43
    iget-object v1, p1, Luy;->b:Lry;

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    iput-object v2, p1, Luy;->a:Lry;

    .line 48
    .line 49
    iput-object v2, p1, Luy;->b:Lry;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iput-object v2, v1, Lry;->c:Lry;

    .line 53
    .line 54
    iput-object v1, v2, Lry;->d:Lry;

    .line 55
    .line 56
    iput-object v2, p1, Luy;->b:Lry;

    .line 57
    .line 58
    :goto_0
    const/4 p1, 0x0

    .line 59
    :goto_1
    check-cast p1, Lxo;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {v0, v3}, Lxo;->a(Z)V

    .line 65
    .line 66
    .line 67
    :goto_2
    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lef;->e0:Z

    .line 69
    .line 70
    return-void
.end method

.method public q(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Laj;->q(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Laj;->w:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    iput-boolean v0, p0, Lef;->Y:Z

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const-string v0, "android:style"

    .line 23
    .line 24
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lef;->V:I

    .line 29
    .line 30
    const-string v0, "android:theme"

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lef;->W:I

    .line 37
    .line 38
    const-string v0, "android:cancelable"

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput-boolean v0, p0, Lef;->X:Z

    .line 45
    .line 46
    const-string v0, "android:showsDialog"

    .line 47
    .line 48
    iget-boolean v1, p0, Lef;->Y:Z

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput-boolean v0, p0, Lef;->Y:Z

    .line 55
    .line 56
    const-string v0, "android:backStackId"

    .line 57
    .line 58
    const/4 v1, -0x1

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput p1, p0, Lef;->Z:I

    .line 64
    .line 65
    :cond_1
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laj;->C:Z

    .line 3
    .line 4
    iget-object v1, p0, Lef;->c0:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iput-boolean v0, p0, Lef;->d0:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lef;->c0:Landroid/app/Dialog;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lef;->e0:Z

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lef;->c0:Landroid/app/Dialog;

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lef;->onDismiss(Landroid/content/DialogInterface;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iput-object v0, p0, Lef;->c0:Landroid/app/Dialog;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lef;->f0:Z

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laj;->C:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lef;->e0:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iput-boolean v0, p0, Lef;->e0:Z

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Laj;->O:Lms;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v1, "removeObserver"

    .line 16
    .line 17
    invoke-static {v1}, Lms;->a(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lms;->b:Luy;

    .line 21
    .line 22
    iget-object p0, p0, Lef;->b0:Lo0;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Luy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lxo;

    .line 29
    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lxo;->a(Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final u(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 6

    .line 1
    invoke-super {p0, p1}, Laj;->u(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-boolean v0, p0, Lef;->Y:Z

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eqz v0, :cond_8

    .line 9
    .line 10
    iget-boolean v2, p0, Lef;->a0:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    :cond_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_4

    .line 19
    :cond_1
    iget-boolean v0, p0, Lef;->f0:Z

    .line 20
    .line 21
    if-nez v0, :cond_6

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    const/4 v2, 0x1

    .line 25
    :try_start_0
    iput-boolean v2, p0, Lef;->a0:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Lef;->E()Landroid/app/Dialog;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iput-object v3, p0, Lef;->c0:Landroid/app/Dialog;

    .line 32
    .line 33
    iget-boolean v4, p0, Lef;->Y:Z

    .line 34
    .line 35
    if-eqz v4, :cond_5

    .line 36
    .line 37
    iget v4, p0, Lef;->V:I

    .line 38
    .line 39
    if-eq v4, v2, :cond_3

    .line 40
    .line 41
    if-eq v4, v1, :cond_3

    .line 42
    .line 43
    const/4 v5, 0x3

    .line 44
    if-eq v4, v5, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    const/16 v5, 0x18

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p0}, Laj;->h()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    iget-object v4, p0, Lef;->c0:Landroid/app/Dialog;

    .line 68
    .line 69
    check-cast v3, Landroid/app/Activity;

    .line 70
    .line 71
    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    :goto_1
    iget-object v3, p0, Lef;->c0:Landroid/app/Dialog;

    .line 78
    .line 79
    iget-boolean v4, p0, Lef;->X:Z

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lef;->c0:Landroid/app/Dialog;

    .line 85
    .line 86
    iget-object v4, p0, Lef;->T:Lbf;

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lef;->c0:Landroid/app/Dialog;

    .line 92
    .line 93
    iget-object v4, p0, Lef;->U:Lcf;

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 96
    .line 97
    .line 98
    iput-boolean v2, p0, Lef;->f0:Z

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    const/4 v2, 0x0

    .line 102
    iput-object v2, p0, Lef;->c0:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    :goto_2
    iput-boolean v0, p0, Lef;->a0:Z

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :goto_3
    iput-boolean v0, p0, Lef;->a0:Z

    .line 108
    .line 109
    throw p1

    .line 110
    :cond_6
    :goto_4
    invoke-static {v1}, Lpj;->E(I)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    invoke-virtual {p0}, Laj;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    :cond_7
    iget-object p0, p0, Lef;->c0:Landroid/app/Dialog;

    .line 120
    .line 121
    if-eqz p0, :cond_9

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    :cond_8
    :goto_5
    invoke-static {v1}, Lpj;->E(I)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_9

    .line 137
    .line 138
    invoke-virtual {p0}, Laj;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    :cond_9
    return-object p1
.end method

.method public v(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lef;->c0:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android:dialogShowing"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    const-string v1, "android:savedDialogState"

    .line 16
    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lef;->V:I

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v1, "android:style"

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget v0, p0, Lef;->W:I

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const-string v1, "android:theme"

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-boolean v0, p0, Lef;->X:Z

    .line 39
    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    const-string v1, "android:cancelable"

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-boolean v0, p0, Lef;->Y:Z

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    const-string v1, "android:showsDialog"

    .line 52
    .line 53
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    :cond_4
    iget p0, p0, Lef;->Z:I

    .line 57
    .line 58
    const/4 v0, -0x1

    .line 59
    if-eq p0, v0, :cond_5

    .line 60
    .line 61
    const-string v0, "android:backStackId"

    .line 62
    .line 63
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    :cond_5
    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laj;->C:Z

    .line 3
    .line 4
    iget-object v0, p0, Lef;->c0:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lef;->d0:Z

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lef;->c0:Landroid/app/Dialog;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget v1, Ljv;->view_tree_lifecycle_owner:I

    .line 28
    .line 29
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget v1, Lkv;->view_tree_view_model_store_owner:I

    .line 33
    .line 34
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget v1, Llv;->view_tree_saved_state_registry_owner:I

    .line 38
    .line 39
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laj;->C:Z

    .line 3
    .line 4
    iget-object p0, p0, Lef;->c0:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->hide()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final y(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laj;->C:Z

    .line 3
    .line 4
    iget-object v0, p0, Lef;->c0:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "android:savedDialogState"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lef;->c0:Landroid/app/Dialog;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Laj;->z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Laj;->E:Landroid/view/View;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lef;->c0:Landroid/app/Dialog;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    const-string p1, "android:savedDialogState"

    .line 15
    .line 16
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lef;->c0:Landroid/app/Dialog;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
