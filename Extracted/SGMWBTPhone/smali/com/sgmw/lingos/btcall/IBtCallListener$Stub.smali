.class public abstract Lcom/sgmw/lingos/btcall/IBtCallListener$Stub;
.super Landroid/os/Binder;
.source "IBtCallListener.java"

# interfaces
.implements Lcom/sgmw/lingos/btcall/IBtCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sgmw/lingos/btcall/IBtCallListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sgmw/lingos/btcall/IBtCallListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sgmw.lingos.btcall.IBtCallListener"

.field static final TRANSACTION_callLogChanged:I = 0x3

.field static final TRANSACTION_callStateChanged:I = 0x1

.field static final TRANSACTION_connectStateChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sgmw.lingos.btcall.IBtCallListener"

    .line 44
    invoke-virtual {p0, p0, v0}, Lcom/sgmw/lingos/btcall/IBtCallListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sgmw/lingos/btcall/IBtCallListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.sgmw.lingos.btcall.IBtCallListener"

    .line 55
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    instance-of v1, v0, Lcom/sgmw/lingos/btcall/IBtCallListener;

    if-eqz v1, :cond_1

    .line 57
    check-cast v0, Lcom/sgmw/lingos/btcall/IBtCallListener;

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Lcom/sgmw/lingos/btcall/IBtCallListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sgmw/lingos/btcall/IBtCallListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/sgmw/lingos/btcall/IBtCallListener;
    .locals 1

    .line 207
    sget-object v0, Lcom/sgmw/lingos/btcall/IBtCallListener$Stub$Proxy;->sDefaultImpl:Lcom/sgmw/lingos/btcall/IBtCallListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/sgmw/lingos/btcall/IBtCallListener;)Z
    .locals 1

    .line 197
    sget-object v0, Lcom/sgmw/lingos/btcall/IBtCallListener$Stub$Proxy;->sDefaultImpl:Lcom/sgmw/lingos/btcall/IBtCallListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 201
    sput-object p0, Lcom/sgmw/lingos/btcall/IBtCallListener$Stub$Proxy;->sDefaultImpl:Lcom/sgmw/lingos/btcall/IBtCallListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 198
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.sgmw.lingos.btcall.IBtCallListener"

    if-eq p1, v1, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 72
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 95
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/sgmw/lingos/btcall/IBtCallListener$Stub;->callLogChanged()V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 86
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    .line 89
    :cond_3
    invoke-virtual {p0, v0}, Lcom/sgmw/lingos/btcall/IBtCallListener$Stub;->connectStateChanged(Z)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 77
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v0, v1

    .line 80
    :cond_5
    invoke-virtual {p0, v0}, Lcom/sgmw/lingos/btcall/IBtCallListener$Stub;->callStateChanged(Z)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
