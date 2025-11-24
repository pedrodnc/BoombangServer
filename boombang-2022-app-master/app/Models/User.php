<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    // Account type constants
    const ACCOUNT_TYPE_WEB = 'web';
    const ACCOUNT_TYPE_LAUNCHER = 'launcher';
    const ACCOUNT_TYPE_ADMIN = 'admin';

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'account_type',
        'session_expires_at',
        'is_premium',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'session_expires_at' => 'datetime',
        'is_premium' => 'boolean',
    ];

    /**
     * Check if user is using web version (limited access)
     */
    public function isWebUser(): bool
    {
        return $this->account_type === self::ACCOUNT_TYPE_WEB;
    }

    /**
     * Check if user is using launcher version (full access)
     */
    public function isLauncherUser(): bool
    {
        return $this->account_type === self::ACCOUNT_TYPE_LAUNCHER;
    }

    /**
     * Check if user is admin
     */
    public function isAdmin(): bool
    {
        return $this->account_type === self::ACCOUNT_TYPE_ADMIN;
    }

    /**
     * Check if user has premium access
     */
    public function hasPremiumAccess(): bool
    {
        return $this->is_premium || $this->isLauncherUser() || $this->isAdmin();
    }

    /**
     * Check if user can access trading
     */
    public function canTrade(): bool
    {
        return $this->isLauncherUser() || $this->isAdmin();
    }

    /**
     * Check if user can use private chat
     */
    public function canUsePrivateChat(): bool
    {
        return $this->isLauncherUser() || $this->isAdmin();
    }

    /**
     * Check if user session has expired (for web users)
     */
    public function hasSessionExpired(): bool
    {
        if (!$this->isWebUser() || !$this->session_expires_at) {
            return false;
        }

        return now()->greaterThan($this->session_expires_at);
    }

    /**
     * Extend session for web users (e.g., 2 hours)
     */
    public function extendSession(int $hours = 2): void
    {
        if ($this->isWebUser()) {
            $this->session_expires_at = now()->addHours($hours);
            $this->save();
        }
    }
}
