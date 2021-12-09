<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HistoryKeeper extends Model
{
    public $table = "historykeeper";
    use HasFactory;

    protected $fillable = [
        'name', 'fullname', 'no_id', 'user_keep'
    ];
}
