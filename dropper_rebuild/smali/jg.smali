.class public final synthetic Ljg;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;

.field public final synthetic a:Llg;

.method public synthetic constructor <init>(Llg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljg;->a:Llg;

    .line 5
    .line 6
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Ljg;->a:Llg;

    .line 3
    .line 4
    iput-boolean v0, p0, Llg;->m:Z

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Llg;->o:J

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Llg;->s(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
