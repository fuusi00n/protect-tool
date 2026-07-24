.class public final synthetic Lds;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/turbo/live/ui/MoreInfoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/turbo/live/ui/MoreInfoActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lds;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lds;->b:Lcom/turbo/live/ui/MoreInfoActivity;

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
    .locals 2

    .line 1
    iget p1, p0, Lds;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lds;->b:Lcom/turbo/live/ui/MoreInfoActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/turbo/live/ui/MoreInfoActivity;->A:I

    .line 9
    .line 10
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 11
    .line 12
    const-string v0, "android.intent.action.VIEW"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/turbo/live/ui/MoreInfoActivity;->z:Ld6;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, v1, Ld6;->l:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p0, "info"

    .line 32
    .line 33
    invoke-static {p0}, Lnm;->T(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :catchall_0
    :goto_0
    return-void

    .line 39
    :pswitch_0
    sget p1, Lcom/turbo/live/ui/MoreInfoActivity;->A:I

    .line 40
    .line 41
    invoke-virtual {p0}, Ldb;->h()Llt;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Llt;->b()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
