.class public final La4;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field public final a:Landroid/view/Window$Callback;

.field public b:Z

.field public c:Z

.field public d:Z

.field public final synthetic e:Lg4;


# direct methods
.method public constructor <init>(Lg4;Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La4;->e:Lg4;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object p2, p0, La4;->a:Landroid/view/Window$Callback;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "Window callback may not be null"

    .line 12
    .line 13
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0
.end method


# virtual methods
.method public final a(Landroid/view/Window$Callback;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, La4;->b:Z

    .line 4
    .line 5
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, La4;->b:Z

    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    iput-boolean v1, p0, La4;->b:Z

    .line 13
    .line 14
    throw p1
.end method

.method public final b(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final c(ILandroid/view/Menu;)V
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lj70;->a(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, La4;->c:Z

    .line 2
    .line 3
    iget-object v1, p0, La4;->a:Landroid/view/Window$Callback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-object p0, p0, La4;->e:Lg4;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lg4;->s(Landroid/view/KeyEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_2

    .line 19
    .line 20
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_6

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object p0, p0, La4;->e:Lg4;

    .line 15
    .line 16
    invoke-virtual {p0}, Lg4;->y()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lg4;->n:Lo70;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    iget-object v2, v2, Lo70;->i:Ln70;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    :cond_0
    move v0, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v2, v2, Ln70;->d:Ler;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eq v4, v1, :cond_2

    .line 47
    .line 48
    move v4, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v4, v3

    .line 51
    :goto_0
    invoke-virtual {v2, v4}, Ler;->setQwertyMode(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0, p1, v3}, Ler;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    :goto_1
    if-eqz v0, :cond_3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    iget-object v0, p0, Lg4;->L:Lf4;

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {p0, v0, v2, p1}, Lg4;->D(Lf4;ILandroid/view/KeyEvent;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    iget-object p0, p0, Lg4;->L:Lf4;

    .line 76
    .line 77
    if-eqz p0, :cond_6

    .line 78
    .line 79
    iput-boolean v1, p0, Lf4;->l:Z

    .line 80
    .line 81
    return v1

    .line 82
    :cond_4
    iget-object v0, p0, Lg4;->L:Lf4;

    .line 83
    .line 84
    if-nez v0, :cond_5

    .line 85
    .line 86
    invoke-virtual {p0, v3}, Lg4;->x(I)Lf4;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, v0, p1}, Lg4;->E(Lf4;Landroid/view/KeyEvent;)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-virtual {p0, v0, v2, p1}, Lg4;->D(Lf4;ILandroid/view/KeyEvent;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    iput-boolean v3, v0, Lf4;->k:Z

    .line 102
    .line 103
    if-eqz p0, :cond_5

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    return v3

    .line 107
    :cond_6
    :goto_2
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, La4;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 6
    .line 7
    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    instance-of v0, p2, Ler;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, La4;->b(ILandroid/view/Menu;)Z

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x6c

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, p2, :cond_2

    .line 8
    .line 9
    iget-object p0, p0, La4;->e:Lg4;

    .line 10
    .line 11
    invoke-virtual {p0}, Lg4;->y()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lg4;->n:Lo70;

    .line 15
    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lo70;->m:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-boolean p2, p0, Lo70;->l:Z

    .line 21
    .line 22
    if-ne v0, p2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-boolean v0, p0, Lo70;->l:Z

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-gtz p0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lg9;->a()V

    .line 43
    .line 44
    .line 45
    return p0

    .line 46
    :cond_2
    :goto_0
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, La4;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 6
    .line 7
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2}, La4;->c(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const/16 p2, 0x6c

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iget-object p0, p0, La4;->e:Lg4;

    .line 18
    .line 19
    if-ne p1, p2, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Lg4;->y()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lg4;->n:Lo70;

    .line 25
    .line 26
    if-eqz p0, :cond_4

    .line 27
    .line 28
    iget-object p1, p0, Lo70;->m:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-boolean p2, p0, Lo70;->l:Z

    .line 31
    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iput-boolean v0, p0, Lo70;->l:Z

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-gtz p0, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lg9;->a()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    if-nez p1, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lg4;->x(I)Lf4;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-boolean p2, p1, Lf4;->m:Z

    .line 62
    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0, p1, v0}, Lg4;->q(Lf4;Z)V

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_0
    return-void
.end method

.method public final onPointerCaptureChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lk70;->a(Landroid/view/Window$Callback;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .line 1
    instance-of v0, p3, Ler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Ler;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    iput-boolean v2, v0, Ler;->x:Z

    .line 20
    .line 21
    :cond_2
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 22
    .line 23
    invoke-interface {p0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iput-boolean v1, v0, Ler;->x:Z

    .line 30
    .line 31
    :cond_3
    return p0
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    .line 1
    iget-object v0, p0, La4;->e:Lg4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lg4;->x(I)Lf4;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lf4;->h:Ler;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p3}, La4;->d(Ljava/util/List;Landroid/view/Menu;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, La4;->d(Ljava/util/List;Landroid/view/Menu;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onSearchRequested()Z
    .locals 0

    .line 8
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result p0

    return p0
.end method

.method public final onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-static {p0, p1}, Li70;->a(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 489
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 8

    .line 1
    iget-object v0, p0, La4;->e:Lg4;

    .line 2
    .line 3
    iget-object v1, v0, Lg4;->k:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, La4;->a:Landroid/view/Window$Callback;

    .line 8
    .line 9
    invoke-static {p0, p1, p2}, Li70;->b(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Lle;

    .line 15
    .line 16
    invoke-direct {p0, v1, p1}, Lle;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v0, Lg4;->t:Lp1;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lp1;->a()V

    .line 24
    .line 25
    .line 26
    :cond_1
    new-instance p1, Ls4;

    .line 27
    .line 28
    invoke-direct {p1, v0, p0}, Ls4;-><init>(Lg4;Lle;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lg4;->y()V

    .line 32
    .line 33
    .line 34
    iget-object p2, v0, Lg4;->n:Lo70;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x1

    .line 38
    const/4 v4, 0x0

    .line 39
    if-eqz p2, :cond_4

    .line 40
    .line 41
    iget-object v5, p2, Lo70;->i:Ln70;

    .line 42
    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    invoke-virtual {v5}, Ln70;->a()V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v5, p2, Lo70;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 49
    .line 50
    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v5, p2, Lo70;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 54
    .line 55
    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 56
    .line 57
    .line 58
    new-instance v5, Ln70;

    .line 59
    .line 60
    iget-object v6, p2, Lo70;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 61
    .line 62
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-direct {v5, p2, v6, p1}, Ln70;-><init>(Lo70;Landroid/content/Context;Ls4;)V

    .line 67
    .line 68
    .line 69
    iget-object v6, v5, Ln70;->d:Ler;

    .line 70
    .line 71
    invoke-virtual {v6}, Ler;->w()V

    .line 72
    .line 73
    .line 74
    :try_start_0
    iget-object v7, v5, Ln70;->e:Ls4;

    .line 75
    .line 76
    iget-object v7, v7, Ls4;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v7, Lle;

    .line 79
    .line 80
    invoke-virtual {v7, v5, v6}, Lle;->l(Lp1;Landroid/view/Menu;)Z

    .line 81
    .line 82
    .line 83
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v6}, Ler;->v()V

    .line 85
    .line 86
    .line 87
    if-eqz v7, :cond_3

    .line 88
    .line 89
    iput-object v5, p2, Lo70;->i:Ln70;

    .line 90
    .line 91
    invoke-virtual {v5}, Ln70;->g()V

    .line 92
    .line 93
    .line 94
    iget-object v6, p2, Lo70;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 95
    .line 96
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lp1;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v3}, Lo70;->a(Z)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    move-object v5, v4

    .line 104
    :goto_0
    iput-object v5, v0, Lg4;->t:Lp1;

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    invoke-virtual {v6}, Ler;->v()V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_4
    :goto_1
    iget-object p2, v0, Lg4;->t:Lp1;

    .line 113
    .line 114
    if-nez p2, :cond_12

    .line 115
    .line 116
    iget-object p2, v0, Lg4;->x:Lm60;

    .line 117
    .line 118
    if-eqz p2, :cond_5

    .line 119
    .line 120
    invoke-virtual {p2}, Lm60;->b()V

    .line 121
    .line 122
    .line 123
    :cond_5
    iget-object p2, v0, Lg4;->t:Lp1;

    .line 124
    .line 125
    if-eqz p2, :cond_6

    .line 126
    .line 127
    invoke-virtual {p2}, Lp1;->a()V

    .line 128
    .line 129
    .line 130
    :cond_6
    iget-object p2, v0, Lg4;->u:Landroidx/appcompat/widget/ActionBarContextView;

    .line 131
    .line 132
    if-nez p2, :cond_b

    .line 133
    .line 134
    iget-boolean p2, v0, Lg4;->H:Z

    .line 135
    .line 136
    if-eqz p2, :cond_8

    .line 137
    .line 138
    new-instance p2, Landroid/util/TypedValue;

    .line 139
    .line 140
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    sget v6, Luu;->actionBarTheme:I

    .line 148
    .line 149
    invoke-virtual {v5, v6, p2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 150
    .line 151
    .line 152
    iget v6, p2, Landroid/util/TypedValue;->resourceId:I

    .line 153
    .line 154
    if-eqz v6, :cond_7

    .line 155
    .line 156
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 165
    .line 166
    .line 167
    iget v5, p2, Landroid/util/TypedValue;->resourceId:I

    .line 168
    .line 169
    invoke-virtual {v6, v5, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 170
    .line 171
    .line 172
    new-instance v5, Llc;

    .line 173
    .line 174
    invoke-direct {v5, v1, v2}, Llc;-><init>(Landroid/content/Context;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5}, Llc;->getTheme()Landroid/content/res/Resources$Theme;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v1, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 182
    .line 183
    .line 184
    move-object v1, v5

    .line 185
    :cond_7
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    .line 186
    .line 187
    invoke-direct {v5, v1}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    .line 188
    .line 189
    .line 190
    iput-object v5, v0, Lg4;->u:Landroidx/appcompat/widget/ActionBarContextView;

    .line 191
    .line 192
    new-instance v5, Landroid/widget/PopupWindow;

    .line 193
    .line 194
    sget v6, Luu;->actionModePopupWindowStyle:I

    .line 195
    .line 196
    invoke-direct {v5, v1, v4, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 197
    .line 198
    .line 199
    iput-object v5, v0, Lg4;->v:Landroid/widget/PopupWindow;

    .line 200
    .line 201
    const/4 v6, 0x2

    .line 202
    invoke-static {v5, v6}, Lgu;->d(Landroid/widget/PopupWindow;I)V

    .line 203
    .line 204
    .line 205
    iget-object v5, v0, Lg4;->v:Landroid/widget/PopupWindow;

    .line 206
    .line 207
    iget-object v6, v0, Lg4;->u:Landroidx/appcompat/widget/ActionBarContextView;

    .line 208
    .line 209
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 210
    .line 211
    .line 212
    iget-object v5, v0, Lg4;->v:Landroid/widget/PopupWindow;

    .line 213
    .line 214
    const/4 v6, -0x1

    .line 215
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    sget v6, Luu;->actionBarSize:I

    .line 223
    .line 224
    invoke-virtual {v5, v6, p2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 225
    .line 226
    .line 227
    iget p2, p2, Landroid/util/TypedValue;->data:I

    .line 228
    .line 229
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-static {p2, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    iget-object v1, v0, Lg4;->u:Landroidx/appcompat/widget/ActionBarContextView;

    .line 242
    .line 243
    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 244
    .line 245
    .line 246
    iget-object p2, v0, Lg4;->v:Landroid/widget/PopupWindow;

    .line 247
    .line 248
    const/4 v1, -0x2

    .line 249
    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 250
    .line 251
    .line 252
    new-instance p2, Lt3;

    .line 253
    .line 254
    invoke-direct {p2, v0, v3}, Lt3;-><init>(Lg4;I)V

    .line 255
    .line 256
    .line 257
    iput-object p2, v0, Lg4;->w:Lt3;

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_8
    iget-object p2, v0, Lg4;->z:Landroid/view/ViewGroup;

    .line 261
    .line 262
    sget v5, Lfv;->action_mode_bar_stub:I

    .line 263
    .line 264
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    check-cast p2, Landroidx/appcompat/widget/ViewStubCompat;

    .line 269
    .line 270
    if-eqz p2, :cond_b

    .line 271
    .line 272
    invoke-virtual {v0}, Lg4;->y()V

    .line 273
    .line 274
    .line 275
    iget-object v5, v0, Lg4;->n:Lo70;

    .line 276
    .line 277
    if-eqz v5, :cond_9

    .line 278
    .line 279
    invoke-virtual {v5}, Lo70;->b()Landroid/content/Context;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    goto :goto_2

    .line 284
    :cond_9
    move-object v5, v4

    .line 285
    :goto_2
    if-nez v5, :cond_a

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_a
    move-object v1, v5

    .line 289
    :goto_3
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    check-cast p2, Landroidx/appcompat/widget/ActionBarContextView;

    .line 301
    .line 302
    iput-object p2, v0, Lg4;->u:Landroidx/appcompat/widget/ActionBarContextView;

    .line 303
    .line 304
    :cond_b
    :goto_4
    iget-object p2, v0, Lg4;->u:Landroidx/appcompat/widget/ActionBarContextView;

    .line 305
    .line 306
    if-eqz p2, :cond_11

    .line 307
    .line 308
    iget-object p2, v0, Lg4;->x:Lm60;

    .line 309
    .line 310
    if-eqz p2, :cond_c

    .line 311
    .line 312
    invoke-virtual {p2}, Lm60;->b()V

    .line 313
    .line 314
    .line 315
    :cond_c
    iget-object p2, v0, Lg4;->u:Landroidx/appcompat/widget/ActionBarContextView;

    .line 316
    .line 317
    invoke-virtual {p2}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 318
    .line 319
    .line 320
    new-instance p2, Ly00;

    .line 321
    .line 322
    iget-object v1, v0, Lg4;->u:Landroidx/appcompat/widget/ActionBarContextView;

    .line 323
    .line 324
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    iget-object v5, v0, Lg4;->u:Landroidx/appcompat/widget/ActionBarContextView;

    .line 329
    .line 330
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 331
    .line 332
    .line 333
    iput-object v1, p2, Ly00;->c:Landroid/content/Context;

    .line 334
    .line 335
    iput-object v5, p2, Ly00;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 336
    .line 337
    iput-object p1, p2, Ly00;->e:Ls4;

    .line 338
    .line 339
    new-instance v1, Ler;

    .line 340
    .line 341
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-direct {v1, v5}, Ler;-><init>(Landroid/content/Context;)V

    .line 346
    .line 347
    .line 348
    iput v3, v1, Ler;->l:I

    .line 349
    .line 350
    iput-object v1, p2, Ly00;->h:Ler;

    .line 351
    .line 352
    iput-object p2, v1, Ler;->e:Lcr;

    .line 353
    .line 354
    iget-object p1, p1, Ls4;->b:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast p1, Lle;

    .line 357
    .line 358
    invoke-virtual {p1, p2, v1}, Lle;->l(Lp1;Landroid/view/Menu;)Z

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    if-eqz p1, :cond_10

    .line 363
    .line 364
    invoke-virtual {p2}, Ly00;->g()V

    .line 365
    .line 366
    .line 367
    iget-object p1, v0, Lg4;->u:Landroidx/appcompat/widget/ActionBarContextView;

    .line 368
    .line 369
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lp1;)V

    .line 370
    .line 371
    .line 372
    iput-object p2, v0, Lg4;->t:Lp1;

    .line 373
    .line 374
    iget-boolean p1, v0, Lg4;->y:Z

    .line 375
    .line 376
    if-eqz p1, :cond_d

    .line 377
    .line 378
    iget-object p1, v0, Lg4;->z:Landroid/view/ViewGroup;

    .line 379
    .line 380
    if-eqz p1, :cond_d

    .line 381
    .line 382
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    .line 383
    .line 384
    .line 385
    move-result p1

    .line 386
    if-eqz p1, :cond_d

    .line 387
    .line 388
    move p1, v3

    .line 389
    goto :goto_5

    .line 390
    :cond_d
    move p1, v2

    .line 391
    :goto_5
    iget-object p2, v0, Lg4;->u:Landroidx/appcompat/widget/ActionBarContextView;

    .line 392
    .line 393
    const/high16 v1, 0x3f800000    # 1.0f

    .line 394
    .line 395
    if-eqz p1, :cond_e

    .line 396
    .line 397
    const/4 p1, 0x0

    .line 398
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 399
    .line 400
    .line 401
    iget-object p1, v0, Lg4;->u:Landroidx/appcompat/widget/ActionBarContextView;

    .line 402
    .line 403
    invoke-static {p1}, Lw50;->a(Landroid/view/View;)Lm60;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    invoke-virtual {p1, v1}, Lm60;->a(F)V

    .line 408
    .line 409
    .line 410
    iput-object p1, v0, Lg4;->x:Lm60;

    .line 411
    .line 412
    new-instance p2, Lv3;

    .line 413
    .line 414
    invoke-direct {p2, v3, v0}, Lv3;-><init>(ILjava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p1, p2}, Lm60;->d(Lo60;)V

    .line 418
    .line 419
    .line 420
    goto :goto_6

    .line 421
    :cond_e
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 422
    .line 423
    .line 424
    iget-object p1, v0, Lg4;->u:Landroidx/appcompat/widget/ActionBarContextView;

    .line 425
    .line 426
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 427
    .line 428
    .line 429
    iget-object p1, v0, Lg4;->u:Landroidx/appcompat/widget/ActionBarContextView;

    .line 430
    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    instance-of p1, p1, Landroid/view/View;

    .line 436
    .line 437
    if-eqz p1, :cond_f

    .line 438
    .line 439
    iget-object p1, v0, Lg4;->u:Landroidx/appcompat/widget/ActionBarContextView;

    .line 440
    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    check-cast p1, Landroid/view/View;

    .line 446
    .line 447
    sget-object p2, Lw50;->a:Ljava/util/WeakHashMap;

    .line 448
    .line 449
    invoke-static {p1}, Lj50;->c(Landroid/view/View;)V

    .line 450
    .line 451
    .line 452
    :cond_f
    :goto_6
    iget-object p1, v0, Lg4;->v:Landroid/widget/PopupWindow;

    .line 453
    .line 454
    if-eqz p1, :cond_11

    .line 455
    .line 456
    iget-object p1, v0, Lg4;->l:Landroid/view/Window;

    .line 457
    .line 458
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    iget-object p2, v0, Lg4;->w:Lt3;

    .line 463
    .line 464
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 465
    .line 466
    .line 467
    goto :goto_7

    .line 468
    :cond_10
    iput-object v4, v0, Lg4;->t:Lp1;

    .line 469
    .line 470
    :cond_11
    :goto_7
    invoke-virtual {v0}, Lg4;->G()V

    .line 471
    .line 472
    .line 473
    iget-object p1, v0, Lg4;->t:Lp1;

    .line 474
    .line 475
    iput-object p1, v0, Lg4;->t:Lp1;

    .line 476
    .line 477
    :cond_12
    invoke-virtual {v0}, Lg4;->G()V

    .line 478
    .line 479
    .line 480
    iget-object p1, v0, Lg4;->t:Lp1;

    .line 481
    .line 482
    if-eqz p1, :cond_13

    .line 483
    .line 484
    invoke-virtual {p0, p1}, Lle;->e(Lp1;)Ln10;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    :cond_13
    return-object v4
.end method
