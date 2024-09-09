// File: App.tsx

import React from 'react';
import { FaUser } from 'react-icons/fa';
import { FiPlus } from 'react-icons/fi';
import { RiDashboardFill } from 'react-icons/ri';
import { AiFillSetting } from 'react-icons/ai';
import { IoMdBasket } from 'react-icons/io';
import { BsFillPeopleFill } from 'react-icons/bs';
import { AiOutlineArrowLeft } from 'react-icons/ai';
import { GiFinishLine } from 'react-icons/gi';

const goals = [
  { recruits: 30, progress: 30, goal: 80, toReachGoal: 50 },
  { recruits: 30, progress: 30, goal: 80, toReachGoal: 50 },
  { recruits: 30, progress: 30, goal: 80, toReachGoal: 50 },
  { recruits: 30, progress: 30, goal: 80, toReachGoal: 50 },
];

const GoalCard = ({ recruits, progress, goal, toReachGoal }: { recruits: number, progress: number, goal: number, toReachGoal: number }) => (
  <div className="border rounded-lg p-4 bg-white flex justify-between items-center shadow-md">
    <div className="flex items-start">
      <GiFinishLine className="mt-1" />
      <div className="ml-2">
        <p className="text-gray-800 font-semibold">Meta: {goal} Reclutas</p>
        <p className="text-gray-600">Personas Reclutadas</p>
        <div className="w-full bg-gray-300 h-2 rounded">
          <div className="bg-teal-400 h-2 rounded" style={{ width: `${(progress / goal) * 100}%` }}></div>
        </div>
        <p className="text-gray-500">Te faltan {toReachGoal} para alcanzar meta</p>
      </div>
    </div>
    <div className="rounded-full w-10 h-10 bg-gray-200 flex items-center justify-center text-gray-700">{recruits}</div>
  </div>
);

const MyApp: React.FC = () => (
  <div className="w-screen h-screen flex">
    <aside className="w-16 bg-teal-400 flex flex-col items-center py-4">
      <AiOutlineArrowLeft className="text-white text-2xl mb-8" />
      <FaUser className="text-white text-2xl mb-8" />
      <IoMdBasket className="text-white text-2xl mb-8" />
      <RiDashboardFill className="text-white text-2xl mb-8" />
      <AiFillSetting className="text-white text-2xl mb-8" />
    </aside>
    <main className="flex-1 p-8 bg-gray-100">
      <header className="flex justify-between items-center mb-8">
        <div>
          <h1 className="text-teal-500 text-2xl font-bold">Metas</h1>
          <p className="text-gray-600">Semana 2/4</p>
          <p className="text-gray-500">Del período 05 (1 al 31 de mayo)</p>
        </div>
        <div className="bg-black text-white p-2 rounded-full cursor-pointer">
          <FiPlus className="text-lg" />
        </div>
      </header>
      <div className="flex items-center space-x-4 mb-8">
        <button className="px-4 py-2 bg-teal-400 text-white rounded-lg">Mis metas (2)</button>
        <button className="px-4 py-2 bg-gray-200 rounded-lg">Metas de mi unidad (2)</button>
      </div>
      <div className="grid grid-cols-2 gap-6">
        {goals.map((goal, index) => (
          <GoalCard 
            key={index} 
            recruits={goal.recruits} 
            progress={goal.progress} 
            goal={goal.goal} 
            toReachGoal={goal.toReachGoal} 
          />
        ))}
      </div>
    </main>
    <div className="p-8 bg-white fixed right-0 top-0 flex flex-col items-end">
      <div className="flex items-center mb-4">
        <BsFillPeopleFill className="text-gray-800 mr-2" />
        <p className="text-gray-800 font-semibold">Reclutas</p>
        <p className="ml-2 text-gray-800 font-semibold">4,770</p>
      </div>
      <p className="text-gray-800 font-semibold">Ventas Totales</p>
      <p className="text-gray-900 font-semibold">$ 1,075,345.60</p>
    </div>
  </div>
);

export default MyApp;