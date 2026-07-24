.class public final Ll5;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ll5;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ll5;->c:Landroid/view/View;

    .line 8
    .line 9
    iput-object p2, p0, Ll5;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iput p3, p0, Ll5;->b:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll5;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll5;->d:Ljava/lang/Object;

    iput-object p2, p0, Ll5;->c:Landroid/view/View;

    iput p3, p0, Ll5;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Ll5;->a:I

    .line 2
    .line 3
    iget v1, p0, Ll5;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Ll5;->c:Landroid/view/View;

    .line 6
    .line 7
    iget-object p0, p0, Ll5;->d:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 13
    .line 14
    sget v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e0:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E(Landroid/view/View;IZ)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast v2, Landroid/widget/TextView;

    .line 22
    .line 23
    check-cast p0, Landroid/graphics/Typeface;

    .line 24
    .line 25
    invoke-virtual {v2, p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
