.class public abstract Lun;
.super Landroid/app/Service;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Lrn;

.field public final a:Ly2;

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ly2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Ly2;-><init>(Lun;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lun;->a:Ly2;

    .line 10
    .line 11
    return-void
.end method

.method public final e()Ltn;
    .locals 0

    .line 1
    iget-object p0, p0, Lun;->a:Ly2;

    .line 2
    .line 3
    iget-object p0, p0, Ly2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Ltn;

    .line 6
    .line 7
    return-object p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lun;->a:Ly2;

    .line 5
    .line 6
    sget-object p1, Lon;->ON_START:Lon;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ly2;->q(Lon;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lun;->a:Ly2;

    .line 2
    .line 3
    sget-object v1, Lon;->ON_CREATE:Lon;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ly2;->q(Lon;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lon;->ON_STOP:Lon;

    .line 2
    .line 3
    iget-object v1, p0, Lun;->a:Ly2;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ly2;->q(Lon;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lon;->ON_DESTROY:Lon;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ly2;->q(Lon;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lun;->a:Ly2;

    .line 2
    .line 3
    sget-object v1, Lon;->ON_START:Lon;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ly2;->q(Lon;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
