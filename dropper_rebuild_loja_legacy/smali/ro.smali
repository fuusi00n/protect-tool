.class public final Lro;
.super Landroid/database/DataSetObserver;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public final synthetic a:Luo;


# direct methods
.method public constructor <init>(Luo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lro;->a:Luo;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lro;->a:Luo;

    .line 2
    .line 3
    iget-object v0, p0, Luo;->z:Lr4;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Luo;->f()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    .line 1
    iget-object p0, p0, Lro;->a:Luo;

    .line 2
    .line 3
    invoke-virtual {p0}, Luo;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
