//
// Created by maks on 11.03.2020.
//

#include <iostream>
#include <thread>
#include <ncurses.h>
#include <time.h>
#include <unistd.h>
#include <mutex>

using namespace std;

const int threads = 5;
bool forkAvailability[threads];

// stany danych czynnosci
int status[threads];
int cycleCounter[threads];
int eatStatus[threads];
int thinkStatus[threads];
mutex mtx;

// podniesienie widelca
void PickUpFork(int tID)
{
    forkAvailability[tID] = false;
    forkAvailability[((2*threads+tID-1)%threads)] = false;
}

// odlozenie widelca
void PutDownFork(int tID)
{
    forkAvailability[tID] = true;
    forkAvailability[((2*threads+tID-1) % threads)] = true;
}

// wyswietlenie aktualnego stanu
void Display()
{
    mtx.lock();

    if(has_colors() == true)
    {
        start_color();
        init_pair(1, COLOR_BLUE, COLOR_BLACK);
        init_pair(2, COLOR_RED, COLOR_BLACK);
        init_pair(3, COLOR_WHITE, COLOR_BLACK);

        for (int i=0; i < threads; i++) {
            mvprintw(0, 12, "PROBLEM UCZTUJACYCH FILOZOFOW");

            attron(COLOR_PAIR(1));
            mvprintw(2, 0, "Filozofowie:", i);
            mvprintw(2, 20, "Myslenie:");
            mvprintw(2, 40, "Jedzenie:");
            attroff(COLOR_PAIR(1));
            mvprintw(i + 3, 0, "Filozof %d", i);
            mvprintw(i + 3, 20, "Status: %d", thinkStatus[i]);
            mvprintw(i + 3, 40, "Status: %d", eatStatus[i]);
            attron(COLOR_PAIR(1));
            mvprintw(10, 0, "Filozofowie:");
            attroff(COLOR_PAIR(1));
            mvprintw(10, i * 5 + 15, "%d", i, status[i]);
            mvprintw(12, 0, "0 - Mysli", status[i]);
            mvprintw(13, 0, "1 - Je", status[i]);
            mvprintw(12, i*5+15, "%d", status[i]);

            /*if (i == 0) {
            attron(COLOR_PAIR(3));
            mvprintw(12, i * 5 + 15, "%d", status[i]);
            attroff(COLOR_PAIR(3));
            }
            if( i == 1) {
                attron(COLOR_PAIR(2));
                mvprintw(12, i * 5 + 15, "%d", status[i]);
                attroff(COLOR_PAIR(2));
            }*/

            refresh();
        }
    }

    mtx.unlock();
}

void Start(int tID)
{
    while(true)
    {
        mtx.lock();

        // jesli (widelce dla tID dostępne && licznik ilosci razy jedzenia dla tID mniejszy) to wez widelce i zacznij jesc
        if((forkAvailability[tID] && forkAvailability[(((2*threads)+tID-1)%threads)]) &&
           (cycleCounter[tID]<=cycleCounter[(2*threads+tID-1)%threads]) && (cycleCounter[tID]<=cycleCounter[(2*threads+tID+1)%threads]))
        {
            PickUpFork(tID);
            status[tID] = 1;
            cycleCounter[tID]++;
        }

        mtx.unlock();
        eatStatus[tID] = 0;

        if(status[tID] == 1)
        {
            // losowa wartosc od 0.3 do 0.5 sekundy
            for(int i=1; i<=10; i++)
            {
                usleep(rand() % 300000 + 200000);
                eatStatus[tID] += 10;

                Display();
            }
        }

        eatStatus[tID] = 0;
        clear();
        Display();

        mtx.lock();

        if(status[tID] == 1)
        {
            PutDownFork(tID);
            status[tID] = 0;
        }

        mtx.unlock();

        thinkStatus[tID] = 0;

        if(status[tID] == 0)
        {
            // losowa wartosc od 0,1 sekundy (zeby czesciej sprawdzal dostepnosc widelcow)
            for(int i=1; i<=10; i++)
            {
                usleep(rand() %10000 + 100000);
                thinkStatus[tID] += 10;

                Display();
            }
        }

        thinkStatus[tID] = 0;
        clear();

        Display();
    }
}

int main()
{
    srand(time(NULL));

    // ustawienie dostepnosci widelcow na poczatek
    for(int i=0; i<threads; i++)
    {
        forkAvailability[i] = true;
        status[i] = 0;
    }

    int tab[threads];
    thread t[threads];

    initscr();
    nodelay(stdscr,TRUE);
    refresh();

    // utworzenie watkow
    for (int i = 0; i < threads; i++)
    {
        t[i] = thread(Start, i);
    }

    for (int i = 0; i < threads; i++)
    {
        t[i].join();
    }


    // q zeby wyjsc z programu
    /*char quit;
    do
    {
        quit = getch();
    } while(quit != 'q');*/

    endwin();
    return 0;
}