.class public final Lx30;
.super Lt30;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final synthetic a:I

.field public b:Ls30;

.method public synthetic constructor <init>()V
    .locals 1

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lx30;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ls30;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lx30;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lx30;->b:Ls30;

    .line 8
    .line 9
    return-void
.end method

.method public b(Ls30;)V
    .locals 0

    .line 1
    iget p1, p0, Lx30;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lx30;->b:Ls30;

    .line 8
    .line 9
    check-cast p0, Lv6;

    .line 10
    .line 11
    iget-boolean p1, p0, Lv6;->D:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Ls30;->G()V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lv6;->D:Z

    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ls30;)V
    .locals 2

    .line 1
    iget v0, p0, Lx30;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lx30;->b:Ls30;

    .line 7
    .line 8
    check-cast v0, Lv6;

    .line 9
    .line 10
    iget v1, v0, Lv6;->C:I

    .line 11
    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    iput v1, v0, Lv6;->C:I

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v0, Lv6;->D:Z

    .line 20
    .line 21
    invoke-virtual {v0}, Ls30;->m()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1, p0}, Ls30;->x(Lr30;)Ls30;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    iget-object v0, p0, Lx30;->b:Ls30;

    .line 29
    .line 30
    invoke-virtual {v0}, Ls30;->z()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ls30;->x(Lr30;)Ls30;

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
