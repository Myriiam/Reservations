<?php

namespace App\Http\Controllers;

use App\Models\Show;
use App\Models\User;
use App\Models\Location;
use Illuminate\Http\Request;
use App\Models\Representation;
use Illuminate\Support\Carbon;

class CsvController extends Controller
{
    /**
     * Export $shows CSV file.
     *
     * @return \Illuminate\Http\Response
     */
    public function showsCsv(Request $request)
    {
       $fileName = 'shows.csv';

       $reps = Representation::where('when', '!=', null)->get();

       $datas = [];

       foreach($reps as $rep){
           $show = Show::where('id', '=', $rep->show_id)->get()[0];

           array_push($datas,
               $show->title,
               $show->description,
               $show->bookable,
               $show->price              
           );

           $location = Location::find($show->location_id);
           
           $place;
           if(!$location){
               $place = "";
            } else {
                $place = $location->designation;
            }

           $representation = Representation::where('show_id', '=', $show->id)->get();
            $date = $representation[0]->when;

           $qty = $representation[0]->places;
            array_push($datas, $date, $place, $qty);   //location_id can not be NULL
        }

            $headers = array(
                "Content-type"        => "text/csv; charset=UTF-8",
                "Content-Disposition" => "attachment; filename=$fileName",
                "Pragma"              => "no-cache",
                "Cache-Control"       => "must-revalidate, post-check=0, pre-check=0",
                "Expires"             => "0",
                "Content-Encoding"    => "UTF-8",

            );

            $columns = array('Title', 'description', 'bookable', 'price', 'location', 'date', 'qty');

            $callback = function() use($datas, $columns) {
                $file = fopen('php://output', 'w');
                fputs($file, "\xEF\xBB\xBF");
                fputcsv($file, $columns);

                    fputcsv($file, $datas);
                
                    fclose($file);
            };
    
            return response()->stream($callback, 200, $headers);
    }

    /**
     * Export users CSV file.
     *
     * @return \Illuminate\Http\Response
     */
    public function usersCsv(Request $request)
    {
        $fileName = 'users.csv';
        $users = User::all();
    
        $headers = array(
                "Content-type"        => "text/csv; charset=UTF-8",
                "Content-Disposition" => "attachment; filename=$fileName",
                "Pragma"              => "no-cache",
                "Cache-Control"       => "must-revalidate, post-check=0, pre-check=0",
                "Expires"             => "0",
                "Content-Encoding"    => "UTF-8",
        );
    
            $columns = array('name', 'firstname', 'lastname', 'langue', 'email');
    
            $callback = function() use($users, $columns) {
                $file = fopen('php://output', 'w');
                fputs($file, "\xEF\xBB\xBF");
                fputcsv($file, $columns);
    
                foreach ($users as $user) {
                    $row['name']  = $user->name;
                    $row['firstname'] = $user->firstname;
                    $row['lastname']  = $user->lastname;
                    $row['langue']  = $user->langue;
                    $row['email']  = $user->email;
    
                    fputcsv($file, array($row['name'], $row['firstname'], $row['lastname'], $row['langue'], $row['email']));
                }


                fclose($file);
            };
    
            return response()->stream($callback, 200, $headers);
        }
}
