.class public final Ldf;
.super Lvd;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final synthetic E:Lyi;

.field public final synthetic F:Lef;

.method public constructor <init>(Lef;Lyi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldf;->F:Lef;

    .line 5
    .line 6
    iput-object p2, p0, Ldf;->E:Lyi;

    .line 7
    .line 8
    return-void
.end method

.method public final J(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Ldf;->E:Lyi;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyi;->K()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lyi;->J(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object p0, p0, Ldf;->F:Lef;

    .line 15
    .line 16
    iget-object p0, p0, Lef;->c0:Landroid/app/Dialog;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public final K()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ldf;->E:Lyi;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyi;->K()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Ldf;->F:Lef;

    .line 10
    .line 11
    iget-boolean p0, p0, Lef;->f0:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method
