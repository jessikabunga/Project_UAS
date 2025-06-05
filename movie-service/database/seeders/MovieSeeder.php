<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use GuzzleHttp\Client;
use Carbon\Carbon;

class MovieSeeder extends Seeder
{
    protected $client;
    protected $apiKey;

    public function __construct()
    {
        $this->client = new Client([
            'base_uri' => 'https://api.themoviedb.org/3/',
        ]);

        $this->apiKey = '83117a85ca00d811c78a9560905d26f5'; 
    }

    public function run()
    {
        $response = $this->client->get('movie/popular', [
            'query' => [
                'api_key' => $this->apiKey,
                'language' => 'en-US',
                'page' => 1
            ]
        ]);

        $movies = json_decode($response->getBody(), true)['results'];
        $count = 0;

        foreach ($movies as $movie) {
            if (++$count > 50) break;

            $genreNames = $this->getGenreNames($movie['genre_ids'] ?? []);

            DB::table('movies')->insert([
                'judul' => $movie['title'] ?? 'Tanpa Judul',
                'genre' => implode(', ', $genreNames),
                'jadwal' => $this->generateRandomJadwal(),
                'harga' => rand(30000, 70000),
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);
        }

        $this->command->info('MovieSeeder with TMDB API completed!');
    }

    private function getGenreNames(array $genreIds)
    {
        static $genreMap = null;

        if (!$genreMap) {
            $response = $this->client->get('genre/movie/list', [
                'query' => [
                    'api_key' => $this->apiKey,
                    'language' => 'en-US'
                ]
            ]);
            $genres = json_decode($response->getBody(), true)['genres'];
            $genreMap = collect($genres)->pluck('name', 'id')->toArray();
        }

        return array_map(fn($id) => $genreMap[$id] ?? 'Unknown', $genreIds);
    }

    private function generateRandomJadwal()
    {
        return Carbon::now()->addDays(rand(1, 10))->setTime(19, 0)->format('Y-m-d H:i:s');
    }
}
