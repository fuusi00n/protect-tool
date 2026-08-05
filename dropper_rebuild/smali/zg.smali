.class public final Lzg;
.super Ld40;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final z:Lyg;

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lyg;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lyg;-><init>(Landroid/widget/TextView;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lzg;->z:Lyg;

    .line 10
    .line 11
    return-void
.end method

.method public final O(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final P(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lzg;->z:Lyg;

    .line 2
    .line 3
    iput-boolean p1, p0, Lyg;->B:Z

    .line 4
    .line 5
    return-void
.end method

.method public final X(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final p([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final w()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lzg;->z:Lyg;

    .line 2
    .line 3
    iget-boolean p0, p0, Lyg;->B:Z

    .line 4
    .line 5
    return p0
.end method
