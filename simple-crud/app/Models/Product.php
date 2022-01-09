<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    
    // protected $fillable = [
    //     'name', 'fullname', 'area_a', 'area_b', 'area_c', 'area_d', 'area_e', 'area_f', 'area_g', 'instansi', 'no_id', 'image', 'exp_date', 'card_status', 'no_vaksin_cov', 'dosis_satu_cov', 'dosis_dua_cov'
    // ];
    protected $guarded = ['id'];

    public function divisi(){
        return $this->belongsTo('App\Models\Divisi');
    }
}
