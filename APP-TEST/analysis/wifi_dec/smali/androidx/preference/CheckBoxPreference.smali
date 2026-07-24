.class public Landroidx/preference/CheckBoxPreference;
.super Landroidx/preference/TwoStatePreference;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    sget v0, Lru;->checkBoxPreferenceStyle:I

    .line 2
    .line 3
    const v1, 0x101008f

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lyt;->f(Landroid/content/Context;II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lfw;->CheckBoxPreference:[I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, p2, p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget p1, Lfw;->CheckBoxPreference_summaryOn:I

    .line 21
    .line 22
    sget p2, Lfw;->CheckBoxPreference_android_summaryOn:I

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    :cond_0
    sget p1, Lfw;->CheckBoxPreference_summaryOff:I

    .line 34
    .line 35
    sget p2, Lfw;->CheckBoxPreference_android_summaryOff:I

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    :cond_1
    sget p1, Lfw;->CheckBoxPreference_disableDependentsState:I

    .line 47
    .line 48
    sget p2, Lfw;->CheckBoxPreference_android_disableDependentsState:I

    .line 49
    .line 50
    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    .line 59
    .line 60
    return-void
.end method
