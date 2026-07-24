.class public final Ljh;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:Lkh;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Lkh;Ly2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ljh;->a:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p1, p0, Ljh;->b:Lkh;

    .line 12
    .line 13
    sget p1, Lhw;->TextInputLayout_endIconDrawable:I

    .line 14
    .line 15
    iget-object p2, p2, Ly2;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p2, Landroid/content/res/TypedArray;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput p1, p0, Ljh;->c:I

    .line 25
    .line 26
    sget p1, Lhw;->TextInputLayout_passwordToggleDrawable:I

    .line 27
    .line 28
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Ljh;->d:I

    .line 33
    .line 34
    return-void
.end method
