#include "timerclass.h"

TimerClass::TimerClass(QObject *parent)

    : QObject{parent}
    , m_timeDisplay( QString () )
    , m_seconds (0)
    , m_minutes  (0)

// initiating the timer to be started on creation of the class object
{
    m_timer = new QTimer ( this );
    m_timer ->setInterval(1000);

    connect (m_timer, &QTimer::timeout, this, &TimerClass::timeTicker);
    m_timer ->start();
}

// Initiating the destructor for the function
TimerClass::~TimerClass()
{
    m_timer ->deleteLater();
}

// Displaying the timer current value.
QString TimerClass::timeDisplay()
{
    return m_timeDisplay;
}

// Updating the timer
void TimerClass::setTimeDisplay ( QString display )
{
    if (m_timeDisplay != display)
    {
        m_timeDisplay = display;
        emit timeDisplayChanged();
    }
}

// Creating the timer display
void TimerClass::timeTicker()
{
    m_seconds++;

    if (m_seconds >= 60)
    {
        m_seconds = 0;
        m_minutes++;
    }

    QString outText;

    if(m_minutes < 10)
    {
        outText.append("0");
    }

    outText.append(QString::number(m_minutes));

    outText.append(":");

    if(m_seconds < 10)
    {
        outText.append("0");
    }
    outText.append(QString::number(m_seconds));

    setTimeDisplay(outText);

}

// Pause timer
void TimerClass::pauseTimer()
{
    m_timer ->stop();
}

// Resume timer
void TimerClass::resumeTimer()
{
    m_timer ->start();
}


