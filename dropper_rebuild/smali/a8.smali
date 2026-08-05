.class public final La8;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Ljava/lang/Runnable;

.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, La8;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La8;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, La8;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, La8;->a:I

    .line 2
    .line 3
    iget v1, p0, La8;->b:I

    .line 4
    .line 5
    iget-object p0, p0, La8;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lpq;

    .line 11
    .line 12
    iget-object p0, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0, p0, v1}, Lww;->x0(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :pswitch_0
    check-cast p0, Lo0;

    .line 29
    .line 30
    iget-object p0, p0, Lo0;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Lyt;

    .line 33
    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lyt;->o(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
